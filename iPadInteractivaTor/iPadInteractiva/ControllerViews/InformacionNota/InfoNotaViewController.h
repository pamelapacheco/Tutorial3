//
//  InfoNotaViewController.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 28/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

//Libreria para obtener datos del servidor
#import <RestKit/RestKit.h>
#import "CommManager.h"
#import "SBJSON.h"

//NavigationBar
#import "NavigationBar2Portrait.h"
#import "NavigationBar2Landscape.h"

//Clases para el progress custom
#import "MBProgressHUD.h"

@interface InfoNotaViewController : UIViewController<RKRequestDelegate,NavigationBar2LandscapeDelegate,NavigationBar2PortraitDelegate,MBProgressHUDDelegate>{
    
    //Progress hud
    MBProgressHUD *HUD;
    
    //manejar fecha y hora
    NSString *mesO;
    NSMutableString * idCharactersFecha;
    NSMutableString * idCharactersHora;
    
    //Tamaño del texto
    NSUInteger textFontSize;
}

//Modificacion de la imagen
@property (nonatomic) float oldWidth;
@property (nonatomic) float scaleFactor;

//////////////////////////////////////////////////////////////////////////////////////////////// ORIENTACION ///////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (nonatomic) int orientacionView;
@property (nonatomic) UIDeviceOrientation orientation;
@property (nonatomic) UIInterfaceOrientation statusBarOrientation;

/////////////////////////////////////////////////////////////////////////////////////////////// NAVIGATIONBAR //////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (strong, nonatomic) UIImage *imagenNavBar;
@property (strong, nonatomic) NavigationBar2Landscape *navigationBar2Landscape;
@property (strong, nonatomic) NavigationBar2Portrait *navigationBar2Portrait;

/////////////////////////////////////////////////////////////////////////////////////////// INFORMACION DE LA NOTA /////////////////////////////////////////////////////////////////////////////////////////////////////

@property (nonatomic, retain) NSString *seccion;
@property (nonatomic, retain) NSString *idNota;
@property (nonatomic, retain) NSArray *arrayDatos;
@property (nonatomic, retain) NSString *primerTexto;
@property (nonatomic, retain) NSString *complementoTexto;
@property (strong, nonatomic) IBOutlet UIWebView *contenidoWeb;

//Con Foto

@property (strong, nonatomic) IBOutlet UIView *viewConFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTitulo;
@property (strong, nonatomic) IBOutlet UIImageView *imagenNota;
@property (strong, nonatomic) IBOutlet UILabel *lbAutor;
@property (strong, nonatomic) IBOutlet UILabel *lbFecha;
@property (strong, nonatomic) IBOutlet UILabel *lbTemas;
@property (strong, nonatomic) IBOutlet UILabel *lbTags;
@property (strong, nonatomic) IBOutlet UILabel *lbComentarios;
@property (strong, nonatomic) IBOutlet UILabel *lbCompartir;

//Sin Foto

@property (strong, nonatomic) IBOutlet UIView *viewSinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloSinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbAutorSinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbFechaSinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTemasSinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTagsSinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbComentariosSinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbCompartirSinFoto;

///////////////////////////////////////////////////////////////////////////////////////////// OPCIONES DE LA NOTA //////////////////////////////////////////////////////////////////////////////////////////////////////

- (IBAction)compartirNota:(id)sender;
- (IBAction)cambiarSizeLetraNota:(id)sender;

///////////////////////////////////////////////////////////////////////////////////////////// DATOS DEL SERVIDOR ///////////////////////////////////////////////////////////////////////////////////////////////////////

@property(nonatomic, retain) NSDictionary *notasDict;

@end
