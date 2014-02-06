//
//  CommManager.h
//  Periodico
//
//  Created by Arturo Pruneda on 04/12/12.
//  Copyright (c) 2012 Somos Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h> 

@protocol CommManagerSeccionesDelegate;
@protocol CommManagerNotasDelegate;
@protocol CommManagerErrorDelegate;

@interface CommManager : NSObject <RKRequestDelegate>{
    
    int numeroSeccion;
    int contadorMasLeidasPorSeccion;
    NSString *tagSeccion;
    NSString *sizeImagenes;
}

@property (nonatomic, retain) NSDictionary *datosRecibidos;

//Objetos de otras clases

@property (nonatomic, retain) id<CommManagerNotasDelegate>  notasDelegate;
@property (nonatomic, retain) id<CommManagerSeccionesDelegate>  seccionesDelegate;
@property (nonatomic, retain) id<CommManagerErrorDelegate>  errorRedDelegate;

//Metodos

+(CommManager *)sharedInstance;
-(void)descargaSecciones;
-(void)descargaArticulosDeSeccion;
-(void)opcionSeccion:(int)opcion;
-(void)notasMasLeidaPorSeccion:(int)contador;
-(void)tagsSecciones:(NSString *)seccion;
-(void)buscaTexto:(NSString *)texto enSeccion:(NSString *)seccion;
-(void)buscaTextoEnTodo:(NSString *)texto;
-(void)reachabilityDidChange:(NSNotification *)notification;

@end

//Protocolos

@protocol CommManagerSeccionesDelegate <NSObject>

-(void)recargaSecciones:(NSDictionary *)seccionesInfo;

@end

@protocol CommManagerNotasDelegate <NSObject>

-(void)recargaArticulosDeSeccion:(NSDictionary *)seccionesInfo;
-(void)recargaFocos:(NSDictionary *)seccionesInfo;
-(void)recargaLoMas:(NSDictionary *)seccionesInfo;
-(void)recargaSigloTV:(NSDictionary *)seccionesInfo;

@end

@protocol CommManagerErrorDelegate <NSObject>

-(void)recargaSecciones:(NSDictionary *)seccionesInfo;
-(void)errorConexion;

@end