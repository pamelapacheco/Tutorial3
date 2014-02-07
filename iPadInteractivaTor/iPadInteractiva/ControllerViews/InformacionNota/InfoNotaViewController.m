//
//  InfoNotaViewController.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 28/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

//Controladores
#import "InfoNotaViewController.h"

//Datos de inicio de secciones
#define kOrientacionPortrait 1
#define kOrientacionLandscape 2

@interface InfoNotaViewController ()

@end

@implementation InfoNotaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) { }
    return self;
}

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    [self metodosInicio];
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    //Orientacion de la vista
    [self orientationChanged];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationChanged)name:UIDeviceOrientationDidChangeNotification object:nil];
}

- (void)didReceiveMemoryWarning{
    
    [super didReceiveMemoryWarning];
}

//********************************************************************************************************************************************************************************************************************//
/////////////////////////////////////////////////////////////////////////////////////// ORIENTACION DE LA VISTA ////////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* ORIENTACION DE LA VISTA *******

-(NSUInteger)supportedInterfaceOrientations{
    
    return UIInterfaceOrientationLandscapeLeft | UIInterfaceOrientationLandscapeRight | UIInterfaceOrientationPortrait | UIInterfaceOrientationPortraitUpsideDown;
}

- (void)orientationChanged{
    
    self.orientation = [[UIDevice currentDevice] orientation];
    self.statusBarOrientation =[UIApplication sharedApplication].statusBarOrientation;
    
    if (self.orientation == 0 || self.orientation == 5)
        self.orientacionView = self.statusBarOrientation;
    else
        self.orientacionView = self.orientation;
    
    if (self.orientacionView == UIInterfaceOrientationPortrait || self.orientacionView == UIInterfaceOrientationPortraitUpsideDown)
    {
        [self.navigationBar2Landscape removeFromSuperview];
        [self.navigationBar2Portrait removeFromSuperview];
        
        [self.navigationController.navigationBar addSubview:[self configurarNavigationBarPortrait]];
    }
    else if(self.orientacionView == UIInterfaceOrientationLandscapeLeft || self.orientacionView == UIInterfaceOrientationLandscapeRight)
    {
        [self.navigationBar2Landscape removeFromSuperview];
        [self.navigationBar2Portrait removeFromSuperview];
        
        [self.navigationController.navigationBar addSubview:[self configurarNavigationBarLandscape]];
    }
}

//********************************************************************************************************************************************************************************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////// NAVIGATION BAR ////////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* NAVIGATION BAR *******

-(UIView*)configurarNavigationBarLandscape{
    
    self.navigationItem.hidesBackButton = YES;
    
    // iOS7
    if([self.navigationController.navigationBar respondsToSelector:@selector(barTintColor)])
        self.imagenNavBar = [UIImage imageNamed:@"headerBlanco_landscape_iOS7.png"];
    // older
    else
        self.imagenNavBar = [UIImage imageNamed:@"headerBlanco_landscape_iOS6.png"];
    
    [self.navigationController.navigationBar setBackgroundImage:self.imagenNavBar forBarMetrics:UIBarMetricsDefault];
    
    self.navigationBar2Landscape = [NavigationBar2Landscape customView];
    self.navigationBar2Landscape.frame = CGRectMake(0, 0, 1024, 44);
    self.navigationBar2Landscape.delegateNavigationBar2Landscape = self;
    
    return  self.navigationBar2Landscape;
}

-(UIView*)configurarNavigationBarPortrait{
    
    self.navigationItem.hidesBackButton = YES;
    
    // iOS7
    if([self.navigationController.navigationBar respondsToSelector:@selector(barTintColor)])
        self.imagenNavBar = [UIImage imageNamed:@"headerBlanco_portrait_iOS7.png"];
    // older
    else
        self.imagenNavBar = [UIImage imageNamed:@"headerBlanco_portrait_iOS6.png"];
    
    [self.navigationController.navigationBar setBackgroundImage:self.imagenNavBar forBarMetrics:UIBarMetricsDefault];
    
    self.navigationBar2Portrait = [NavigationBar2Portrait customView];
    self.navigationBar2Portrait.frame = CGRectMake(0, 0, 1024, 44);
    self.navigationBar2Portrait.delegateNavigationBar2Portrait = self;
    
    return self.navigationBar2Portrait;
}

-(void)animacionPushNavigator{
    
    CATransition* transition = [CATransition animation];
    transition.duration = 0.3;
    transition.type = kCATransitionFade;
    transition.subtype = kCATransitionFromTop;
    [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
}

#pragma mark - Delegados del navigationbar

-(void)regresar{

    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self.navigationBar2Landscape removeFromSuperview];
    [self.navigationBar2Portrait removeFromSuperview];
    
    [self animacionPushNavigator];
    [self.navigationController popViewControllerAnimated:NO];
}

//********************************************************************************************************************************************************************************************************************//
/////////////////////////////////////////////////////////////////////////////////////////////// DATOS DE INICIO ////////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* DATOS DE INICIO *******

-(void)metodosInicio{
    
    //Desliega spinner
    [self despliegaHUD];
    
    //Metodo para resetear o limpiar info de los elementos
    [self datosDeInicio];
    
    //Obtener la informacion completa de la nota
    [self obtenerNotaServidor];
}

#pragma mark - Datos de inicio

-(void)datosDeInicio{
    
    textFontSize = 100;
    
    //Navigationbar
    self.navigationController.navigationBarHidden = YES;
    
    //Info de la nota
    self.idNota = [self.arrayDatos valueForKey:@"idnota"];
}

//********************************************************************************************************************************************************************************************************************//
//////////////////////////////////////////////////////////////////////////////////////////// INFORMACION DE LA NOTA ////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* INFORMACION DE LA NOTA *******

-(void)mostrarInformacionNota{
    
    [self mostrarTitulo];
    
    [self mostrarAutor];
    
    [self mostrarFecha];
    
    [self mostrarTemas];
    
    [self mostrarTags];
    
    [self mostrarComentarios];
    
    [self mostrarImagen];
    
    [self mostrarContenidoWeb];
    
    [self escondeHUD];
}

#pragma - Titulo

-(void)mostrarTitulo{
    
    self.lbTitulo.text = [self.notasDict valueForKey:@"cabeza"];
    self.lbTituloSinFoto.text = [self.notasDict valueForKey:@"cabeza"];
}

#pragma - Autor

-(void)mostrarAutor{
    
    self.lbAutor.text = [self.notasDict valueForKey:@"autor"];
    self.lbAutorSinFoto.text = [self.notasDict valueForKey:@"autor"];
}

#pragma - Fecha

-(void)mostrarFecha{
    
    NSString *fechaNota = [self.notasDict valueForKey:@"fecha"];
    
    idCharactersFecha = [NSMutableString string];
    
    for (int i = 0; i < 10; i++)
    {
        NSString * firstLetter = [fechaNota substringWithRange:[fechaNota rangeOfComposedCharacterSequenceAtIndex:i]];
        
        [idCharactersFecha appendString:firstLetter];
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *date = [dateFormatter dateFromString: idCharactersFecha];
    dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    
    NSString *convertedString_Fecha = [dateFormatter stringFromDate:date];
    
    idCharactersFecha = [NSMutableString string];
    
    for (int i = 0; i < 10; i++)
    {
        NSString * firstLetter = [convertedString_Fecha substringWithRange:[convertedString_Fecha rangeOfComposedCharacterSequenceAtIndex:i]];
        
        if (i == 3 || i == 4)
        {
            if ([firstLetter integerValue] == 0 && i == 3)
                mesO = @"si";
            
            if ([mesO isEqualToString:@"si"])
            {
                int num = [firstLetter integerValue];
                
                if (num > 0)
                {
                    switch (num)
                    {
                        case 1:
                            [idCharactersFecha appendString:@"Enero"];
                            break;
                        case 2:
                            [idCharactersFecha appendString:@"Febrero"];
                            break;
                        case 3:
                            [idCharactersFecha appendString:@"Marzo"];
                            break;
                        case 4:
                            [idCharactersFecha appendString:@"Abril"];
                            break;
                        case 5:
                            [idCharactersFecha appendString:@"Mayo"];
                            break;
                        case 6:
                            [idCharactersFecha appendString:@"Junio"];
                            break;
                        case 7:
                            [idCharactersFecha appendString:@"Julio"];
                            break;
                        case 8:
                            [idCharactersFecha appendString:@"Agosto"];
                            break;
                        case 9:
                            [idCharactersFecha appendString:@"Septiembre"];
                            break;
                        default:
                            break;
                    }
                    
                    mesO = @"no";
                }
            }
            else
            {
                if (i == 4)
                {
                    int num = [firstLetter integerValue];
                    
                    switch (num)
                    {
                        case 0:
                            [idCharactersFecha appendString:@"Octubre"];
                            break;
                        case 1:
                            [idCharactersFecha appendString:@"Noviembre"];
                            break;
                        case 2:
                            [idCharactersFecha appendString:@"Diciembre"];
                            break;
                        default:
                            break;
                    }
                }
            }
        }
        else
        {
            if ([firstLetter isEqualToString:@"-"])
            {
                NSString *signo = @" de ";
                [idCharactersFecha appendString:signo];
            }
            else
                [idCharactersFecha appendString:firstLetter];
        }
    }
    
    //HORA
    
    idCharactersHora = [NSMutableString string];
    
    for (int i = 11; i < 16; i++)
    {
        NSString * firstLetter = [fechaNota substringWithRange:[fechaNota rangeOfComposedCharacterSequenceAtIndex:i]];
        [idCharactersHora appendString:firstLetter];
    }
    
    self.lbFecha.text = [NSString stringWithFormat:@"%@ - %@",idCharactersFecha,idCharactersHora];
    self.lbFechaSinFoto.text = [NSString stringWithFormat:@"%@ - %@",idCharactersFecha,idCharactersHora];
}

#pragma -Temas

-(void)mostrarTemas{
    
}

#pragma - Tags

-(void)mostrarTags{
    
}

#pragma - Comentarios

-(void)mostrarComentarios{
    
    self.lbComentarios.text = [NSString stringWithFormat:@"Comentarios %@",[self.notasDict valueForKey:@"comments"]];
    self.lbComentariosSinFoto.text = [NSString stringWithFormat:@"Comentarios %@",[self.notasDict valueForKey:@"comments"]];
}

#pragma mark -  Imagen

-(void)mostrarImagen{
    
    if ([self.notasDict valueForKey:@"images"] == nil)
    {
        self.viewConFoto.hidden = YES;
        self.viewSinFoto.hidden = NO;
    }
    else
    {
        self.viewConFoto.hidden = NO;
        self.viewSinFoto.hidden = YES;
        
        id var = [NSNumber numberWithInteger: 1];
        NSString *varId = [NSString stringWithFormat:@"%@",var];
        
        NSURL* urlImage = [NSURL URLWithString:[[[self.notasDict objectForKey:@"images"]objectForKey:varId]objectForKey:@"path"]];
        NSURLRequest* request = [NSURLRequest requestWithURL:urlImage];
        
        [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
         {
             if (!error)
             {
                 UIImage *imageNota = [UIImage imageWithData:data];
                 
                 self.oldWidth = imageNota.size.width;
                 self.scaleFactor = 350 / self.oldWidth;
                 
                 float newHeight = imageNota.size.height * self.scaleFactor;
                 float newWidth = self.oldWidth * self.scaleFactor;
                 
                 UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
                 [imageNota drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
                 UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
                 UIGraphicsEndImageContext();
                 
                 self.imagenNota.image = newImage;
             }
         }];
    }
}

#pragma - Contenido web

-(void)mostrarContenidoWeb{
    
    NSString *balazo = [[self.notasDict objectForKey:@"balazo"]uppercaseString];
    NSString *cad = [self.notasDict objectForKey:@"body"];
   
    NSArray *vals = [cad componentsSeparatedByString:@"\n"];
    
    if ([vals count] > 1)
    {
        for (int i = 0; i< [vals count]; i++)
        {
            if (i == 0)
            {
                self.primerTexto = [vals objectAtIndex: 0];
            }
            else
            {
                if (self.complementoTexto == nil)
                    self.complementoTexto = [vals objectAtIndex: i];
                else
                    self.complementoTexto = [NSString stringWithFormat:@"%@ \n %@",self.complementoTexto,[vals objectAtIndex: i]];
            }
        }
    }
    
    [self.contenidoWeb loadHTMLString:[NSString stringWithFormat:@"<div style='text-align:justify;'> <span style=\"font-family: Roboto-Condensed;\"> <span style=\"font-size: 12pt\"> <span style=\"line-height: 1.5em\"> <font color=\"35485f\"><b>%@</b></font> <span style=\" border-left: solid 6px #a00; display: inline-block; padding: 0 0 0 5px!important; margin: 15px 15px 15px 15px; font-family: Roboto-BoldCondensed;\"> <b>%@</b></span> %@",balazo,self.primerTexto,self.complementoTexto] baseURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]]];
}

//********************************************************************************************************************************************************************************************************************//
///////////////////////////////////////////////////////////////////////////////////////////// OPCIONES DE LA NOTA //////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* OPCIONES DE LA NOTA *******

#pragma mark - Compartir

- (IBAction)compartirNota:(id)sender {
    
}

#pragma mark -  Cambiar tamaño de la letra

- (IBAction)cambiarSizeLetraNota:(id)sender {
    
    switch ([sender tag])
    {
        case 1: // A+
            textFontSize = (textFontSize < 180) ? textFontSize +5 : textFontSize;
            break;
        case 2: // A-
            textFontSize = (textFontSize > 50) ? textFontSize -5 : textFontSize;
            break;
    }
    
    NSString *jsString = [[NSString alloc] initWithFormat:@"document.getElementsByTagName('body')[0].style.webkitTextSizeAdjust= '%d%%'",textFontSize];
    [self.contenidoWeb stringByEvaluatingJavaScriptFromString:jsString];
}

//********************************************************************************************************************************************************************************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////// MB PROGRESS HUD ///////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ********** MB PROGRESS HUD **********

- (void)despliegaHUD {
    
	HUD = [[MBProgressHUD alloc] initWithView:self.navigationController.view];
    HUD.yOffset = HUD.yOffset +160;
	[self.navigationController.view addSubview:HUD];
	HUD.delegate = self;
    [HUD show:YES];
}

-(void)escondeHUD {
    
	[HUD removeFromSuperview];
    
    //Navigationbar
    self.navigationController.navigationBarHidden = NO;
    
	HUD = nil;
}

//********************************************************************************************************************************************************************************************************************//
///////////////////////////////////////////////////////////////////////////////////////////// DATOS DEL SERVIDOR ///////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - *************** DATOS DEL SERVIDOR ***************

#pragma mark - INFO DE LA NOTA

-(void)obtenerNotaServidor{
    
    [self requestServer:@"/"];
}

- (void) requestServer:(NSString *)peticion {
    
    NSDictionary* params = [NSDictionary dictionaryWithObjectsAndKeys:API_KEY_VALOR, API_KEY, @"nota", API_METODO, self.idNota, API_ITEM, @"full", API_CONTENT, nil];
    [[RKClient sharedClient] post:peticion params:params delegate:self];
}

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response {
    
    SBJsonParser *parser = [[SBJsonParser alloc] init];
    NSMutableDictionary *respuesta =[parser objectWithString:[response bodyAsString]];
    self.notasDict = [respuesta objectForKey:@"nota"];
    
    [self mostrarInformacionNota];
}

- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error {
    
    NSLog(@"request-didFailLoadWithError: %@",error);
}

- (void)requestDidTimeout:(RKRequest *)request {
    
    NSLog(@"requestDidTimeout: %@",request);
}

///////////////////////////////////////////////////////////////////////////////////////////// OBTENER LOS FOCOS ////////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - FOCOS

-(void)recargaFocos:(NSDictionary *)seccionesInfo{
    NSLog(@"Solo hay focos en portada");
}

///////////////////////////////////////////////////////////////////////////////////////////// OBTENER LO NOTAS /////////////////////////////////////////////////////////////////////////////////////////////////////////

-(void)recargaArticulosDeSeccion:(NSDictionary *)seccionesInfo{
    NSLog(@"Notas de secciones");
}

/////////////////////////////////////////////////////////////////////////////////////////////// OBTENER LO MAS /////////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - OBTENER LO MAS DE CASA SECCION

//-(void)inicializarDatosLoLeido{
//    
//    self.arrayDatos = [[NSMutableArray alloc]init];
//    
//    [CommManager sharedInstance].notasDelegate = self;
//    
//    [self obtieneNotasDeSeccion:kLeido];
//}
//
//-(void)obtieneNotasDeSeccion:(int)opcion {
//    
//    [[CommManager sharedInstance] descargaArticulosDeSeccion:[NSString stringWithFormat:@"/seccion/%i", opcion]];
//}

-(void)recargaLoMas:(NSDictionary *)seccionesInfo {
    
}

@end
