//
//  CommManager.m
//  Periodico
//
//  Created by Arturo Pruneda on 04/12/12.
//  Copyright (c) 2012 Somos Software. All rights reserved.
//

#import "CommManager.h"

#import <RestKit/JSONKit.h>

#import "SBJSON.h"

#define kSecciones @"kSecciones"
#define kArticulosSeccion @"kArticulosSeccion"

#define kPortada 1000
#define kFocos 9000
#define kLoMasLeido 2000
#define kLoMasComentado 3000
#define kLoUltimo 4000
#define kSigloTV 6000
#define kDestacamos 7000
#define kNotasColor 8000

@implementation CommManager

typedef enum {
	secciones_Request,
	articulo_Request,
} HTTP_Requests;

CommManager *sharedCommMNG_;

+ (CommManager *)sharedInstance {
    
    if (!sharedCommMNG_ )
    {
        sharedCommMNG_ = [[CommManager alloc] init];
        [[NSNotificationCenter defaultCenter] addObserver:sharedCommMNG_ selector:@selector(reachabilityDidChange:) name:RKReachabilityDidChangeNotification object:nil];
    }
    return sharedCommMNG_;
}

#pragma mark - ********** Descarga Secciones **********

-(void)descargaSecciones {

    // Llamada al servidor para traer las secciones
    [self requestServer:@"secciones"];
}

#pragma mark - ********** Descarga articulos de las secciones **********

-(void)tagsSecciones:(NSString *)seccion{
   
    tagSeccion = seccion;
}

-(void)notasMasLeidaPorSeccion:(int)contador{
    
    contadorMasLeidasPorSeccion = contador;
}

-(void)opcionSeccion:(int)opcion{
    
    numeroSeccion = opcion;
}

-(void)descargaArticulosDeSeccion {
    
    //Llama al servidor para traer las notas de las secciones
    [self requestServer:@"notas"];
}

#pragma mark - ********** RestKit Support **********

- (void) requestServer:(NSString *)request {
    
    NSDictionary* params;
    
    NSString *peticion;
    
    // Petición para obtener las secciones
    if ([request isEqualToString:@"secciones"])
    {
        peticion = @"/";
        params = [NSDictionary dictionaryWithObjectsAndKeys:API_KEY_VALOR, API_KEY, @"secciones", API_METODO, @"index", API_ITEM, nil];
    }
    // Petición para obtener las notas de una sección
    else
    {
        if([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] && ([UIScreen mainScreen].scale == 2.0))
            sizeImagenes = @"700";
        else
            sizeImagenes = @"300";
        
        NSString *idSeccion = [NSString stringWithFormat:@"%i",numeroSeccion];
        
        peticion = @"/";
        
        if (numeroSeccion == kFocos)
            params = [NSDictionary dictionaryWithObjectsAndKeys:API_KEY_VALOR, API_KEY, @"seccion", API_METODO, idSeccion, API_ITEM, sizeImagenes, API_ANCHO, @"1", API_CABEZA ,nil];
        else if (contadorMasLeidasPorSeccion == 1)
        {
            contadorMasLeidasPorSeccion = 0;
            params = [NSDictionary dictionaryWithObjectsAndKeys:API_KEY_VALOR, API_KEY, @"ultimas", API_METODO, idSeccion, API_SID, sizeImagenes, API_ANCHO, nil];
        }
        else if (tagSeccion != nil)
        {
            params = [NSDictionary dictionaryWithObjectsAndKeys:API_KEY_VALOR, API_KEY, @"tags", API_METODO, tagSeccion, API_ITEM, sizeImagenes, API_ANCHO, nil];
            tagSeccion = nil;
        }
        else
            params = [NSDictionary dictionaryWithObjectsAndKeys:API_KEY_VALOR, API_KEY, @"seccion", API_METODO, idSeccion, API_ITEM, sizeImagenes, API_ANCHO,@"1000",API_ANCHO_1, nil];
    }
    
    [RKClient sharedClient].timeoutInterval = 15.0; // 15 seconds
    [[RKClient sharedClient] post:peticion params:params delegate:self];
}

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response {
    
    NSDictionary *secciones;
    
    // Inicializa parser y parsea
    SBJsonParser *parser = [[SBJsonParser alloc] init];
    NSMutableDictionary *respuesta =[parser objectWithString:[response bodyAsString]];
    
    if ([[[request params]valueForKey:@"metodo"] isEqualToString:[NSString stringWithFormat:@"secciones"]])
    {
        // Obtiene el diccionario con la respuesta
        secciones = [respuesta objectForKey:@"seccion"];
        
        // Avisa que llego la respuesta de las secciones
        [self.seccionesDelegate recargaSecciones:secciones];
    }
    else if ([[[request params]valueForKey:@"metodo"] isEqualToString:[NSString stringWithFormat:@"ultimas"]])
        [self.notasDelegate recargaLoMas:respuesta];
    else
    {
        // Avisa que llego la respuesta de las notas
        
        if ([[[request params]valueForKey:@"item"] isEqualToString:[NSString stringWithFormat:@"%i",kFocos]])
            [self.notasDelegate recargaFocos:respuesta];
        else if ([[[request params]valueForKey:@"item"] isEqualToString:[NSString stringWithFormat:@"%i",kLoMasLeido]] || [[[request params]valueForKey:@"item"] isEqualToString:[NSString stringWithFormat:@"%i",kLoMasComentado]]
                 || [[[request params]valueForKey:@"item"] isEqualToString:[NSString stringWithFormat:@"%i",kLoUltimo]] || [[[request params]valueForKey:@"item"] isEqualToString:[NSString stringWithFormat:@"%i",kDestacamos]]
                 || [[[request params]valueForKey:@"item"] isEqualToString:[NSString stringWithFormat:@"%i",kNotasColor]])
        {
            [self.notasDelegate recargaLoMas:respuesta];
        }
        else if ([[[request params]valueForKey:@"item"] isEqualToString:[NSString stringWithFormat:@"%i",kSigloTV]])
            [self.notasDelegate recargaSigloTV:respuesta];
        else
            [self.notasDelegate recargaArticulosDeSeccion:respuesta];
    }
}

- (void)reachabilityDidChange:(NSNotification *)notification {
    
    RKReachabilityObserver* observer = (RKReachabilityObserver *) [notification object];
    RKReachabilityNetworkStatus status = [observer networkStatus];
    
    if (RKReachabilityNotReachable == status) {[self.errorRedDelegate errorConexion];}
}

- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error {
    
    NSLog(@"CommManager-didFailLoadWithError: %@",error);
}

- (void)requestDidTimeout:(RKRequest *)request {
    
    NSLog(@"CommManager-requestDidTimeout: %@",request);
}

#pragma mark - ********** BUSCAR TEXTO **********


-(void)buscaTexto:(NSString *)texto enSeccion:(NSString *)seccion {
    
    [self requestServer:[NSString stringWithFormat:@"%@", seccion]];
}

-(void)buscaTextoEnTodo:(NSString *)texto {
    
    if([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] && ([UIScreen mainScreen].scale == 2.0))
        sizeImagenes = @"700";
    else
        sizeImagenes = @"300";
    
    NSString *peticion = [NSString stringWithFormat:@"/"];
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:API_KEY_VALOR,API_KEY, @"seccion",API_METODO,@"4000",API_ITEM,sizeImagenes, API_ANCHO, texto, @"q", nil];
    
    [[RKClient sharedClient] post:peticion params:params delegate:self];
}

@end
