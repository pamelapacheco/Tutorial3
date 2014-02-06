//
//  HomeViewController.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 22/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

//Clases para obtener datos del servidor
#import <RestKit/RestKit.h>
#import "CommManager.h"
#import "SBJSON.h"

//Controladores
#import "InfoNotaViewController.h"

//Clases para el progress custom
#import "MBProgressHUD.h"

//Celdas
#import "FocosCustomCell.h"
#import "LoUltimoCustomCell.h"
#import "NotasSeccionesCustomCell.h"
#import "NotasColorCell.h"
#import "NotasSeccionCustomCell.h"

//Vistas
#import "MenuSecciones.h"
#import "MenuServicios.h"
#import "Menu1Portrait.h"
#import "Menu2Portrait.h"
#import "Menu1Landscape.h"
#import "Menu2Landscape.h"
#import "Menu3Landscape.h"

//NavigationBar
#import "Navigationbar1Landscape.h"
#import "Navigationbar1Portrait.h"

@interface HomeViewController : UIViewController <RKRequestDelegate, CommManagerSeccionesDelegate,CommManagerNotasDelegate,MBProgressHUDDelegate,UITableViewDataSource,UITableViewDelegate
,MenuSeccionesDelegate,Navigationbar1LandscapeDelegate,Navigationbar1PortraitDelegate,NotasColorCellDelegate,NotasSeccionCustomCellDelegate>{
    
    //Progress hud
    MBProgressHUD *HUD;
    
    //Contador status hidde
    int contadorStatusHidde;
    
    //Tabla seleccionada
    int tagTableTouch;
    
    //Conador Splash
    int contadorSplash;
    
    //Tamaño de las imagenes (peticion al server)
    NSString *sizeImagenes;
}

@property (strong, nonatomic) InfoNotaViewController *infoNotaViewController;

///////////////////////////////////////////////////////////////////////////////////////////////// ORIENTACION //////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (nonatomic) int orientacionSplash;
@property (nonatomic) int orientacionView;
@property (nonatomic) UIDeviceOrientation orientation;
@property (nonatomic) UIInterfaceOrientation statusBarOrientation;

/////////////////////////////////////////////////////////////////////////////////////////////// NAVIGATIONBAR //////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (strong, nonatomic) UIImage *imagenNavBar;
@property (strong, nonatomic) Navigationbar1Landscape *navigationbar1Landscape;
@property (strong, nonatomic) Navigationbar1Portrait *navigationbar1Portrait;

/////////////////////////////////////////////////////////////////////////////////////////////////// SPLASH /////////////////////////////////////////////////////////////////////////////////////////////////////////////

//--Portrait
@property (strong, nonatomic) IBOutlet UIView *viewSplashPortrait;
@property (strong, nonatomic) IBOutlet UILabel *lbFecha;
@property (strong, nonatomic) IBOutlet UILabel *lbTemperatura;
@property (strong, nonatomic) IBOutlet UIImageView *imagenClima;

//--Landscape

@property (strong, nonatomic) IBOutlet UIView *viewSplashLandscape;
@property (strong, nonatomic) IBOutlet UILabel *lbFechaLands;
@property (strong, nonatomic) IBOutlet UILabel *lbTempreraturaLands;
@property (strong, nonatomic) IBOutlet UIImageView *imagenClimaLands;

////////////////////////////////////////////////////////////////////////////////////////////////// GENERAL /////////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (strong, nonatomic) IBOutlet UIScrollView *scrollViewPrincipal;
@property (strong, nonatomic) IBOutlet UIView *viewParte1;
@property (strong, nonatomic) IBOutlet UIView *viewParte2;
@property (strong, nonatomic) IBOutlet UIView *viewParte3;
@property (strong, nonatomic) IBOutlet UIView *viewParte4;

//Modificacion de la imagen
@property (nonatomic) float oldWidth;
@property (nonatomic) float scaleFactor;

////////////////////////////////////////////////////////////////////////////////////////////// MENU PRINCIPAL //////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (nonatomic) int contadorMostrarViewMenu;
- (IBAction)mostrarMenuPrincipal:(id)sender;

//--Portrait

@property (strong, nonatomic) IBOutlet UIView *viewBotonMenuPortrait;
@property (strong, nonatomic) Menu1Portrait *menu1Portrait;
@property (strong, nonatomic) Menu2Portrait *menu2Portrait;

//--Landscape

@property (strong, nonatomic) IBOutlet UIView *viewBotonMenuLandscape;
@property (strong, nonatomic) Menu1Landscape *menu1Landscape;
@property (strong, nonatomic) Menu2Landscape *menu2Landscape;
@property (strong, nonatomic) Menu3Landscape *menu3Landscape;

////////////////////////////////////////////////////////////////////////////////////////////////// CLIMA Y FECHA ///////////////////////////////////////////////////////////////////////////////////////////////////////

//Clima
@property (nonatomic) int obtieneClima;
@property (retain, nonatomic) NSString *climaActual;

//Fecha
@property (retain, nonatomic) NSString *mesO;
@property (retain, nonatomic) NSMutableString * idCharactersFecha;

////////////////////////////////////////////////////////////////////////////////////////////////// SECCIONES ///////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (nonatomic) int idSeccion;
@property (nonatomic) int contadorEntroCambiarSeccion;
@property (strong, nonatomic) MenuSecciones *menuSecciones;
@property (nonatomic) int contadorViewSecciones;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloSeccion;
@property (strong, nonatomic) IBOutlet UIView *viewSecciones;
@property (strong, nonatomic) IBOutlet UIImageView *imagenLineaSecciones;
- (IBAction)mostrarSecciones:(id)sender;

//Spinner
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoSpinner;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

////////////////////////////////////////////////////////////////////////////////////////////////// SERVICIOS ///////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (strong, nonatomic) MenuServicios *menuServicios;
@property (strong, nonatomic) IBOutlet UIView *viewServicios;

//////////////////////////////////////////////////////////////////////////////////////////////// NOTAS PORTADA /////////////////////////////////////////////////////////////////////////////////////////////////////////

//---------- NOTA PRINCIPAL ----------

- (IBAction)mostrarDetalleNotaPrincipal:(id)sender;

//Con foto

@property (strong, nonatomic) IBOutlet UIView *viewNotaPrincipalConFoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenNotaPrincipalConFoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoConFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloConFoto;

//Sin foto
@property (strong, nonatomic) IBOutlet UIView *viewNotaPrincipalSinFoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoSinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloSinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbDescripcion;

//---------- MAS NOTAS DE PORTADA ----------

- (IBAction)mostrarDetalleDeLasNotas:(id)sender;

//Nota 1

@property (strong, nonatomic) IBOutlet UIView *viewNota1Confoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenNota1ConFoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota1ConFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota1ConFoto;

@property (strong, nonatomic) IBOutlet UIView *viewNota1SinFoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota1SinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota1SinFoto;

//Nota 2

@property (strong, nonatomic) IBOutlet UIView *viewNota2Confoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenNota2ConFoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota2ConFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota2ConFoto;

@property (strong, nonatomic) IBOutlet UIView *viewNota2SinFoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota2SinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota2SinFoto;

//Nota 3

@property (strong, nonatomic) IBOutlet UIView *viewNota3Confoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenNota3ConFoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota3ConFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota3ConFoto;

@property (strong, nonatomic) IBOutlet UIView *viewNota3SinFoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota3SinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota3SinFoto;

//Nota 4

@property (strong, nonatomic) IBOutlet UIView *viewNota4Confoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenNota4ConFoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota4ConFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota4ConFoto;

@property (strong, nonatomic) IBOutlet UIView *viewNota4SinFoto;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota4SinFoto;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota4SinFoto;

//Notas de la 5 en adelante
@property (strong, nonatomic) IBOutlet UITableView *tableViewNotasPortada;

//////////////////////////////////////////////////////////////////////////////////////////////////// FOCOS /////////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (strong, nonatomic) IBOutlet UITableView *tableViewFocos;
@property (strong, nonatomic) IBOutlet UIView *viewFocos;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoFocos;

/////////////////////////////////////////////////////////////////////////////////////////////////// GALERIAS ///////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (strong, nonatomic) IBOutlet UITableView *tableViewGalerias;

/////////////////////////////////////////////////////////////////////////////////////////////////// SIGLOTV ////////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (strong, nonatomic) IBOutlet UITableView *tableViewSigloTV;

//////////////////////////////////////////////////////////////////////////////////////////////////// LO MAS ////////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (nonatomic) int seccionLoMas;
@property (nonatomic) int seccionidLoMas;

//---------- NOTAS LO ULTIMO ----------

@property (strong, nonatomic) IBOutlet UITableView *tableViewLoUltimo;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoSpinner1;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *spinner1;
@property (strong, nonatomic) IBOutlet UIImageView *imagenLineaLoUltimo;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloUltimo;

//---------- NOTAS ADEMAS VER ----------

@property (strong, nonatomic) IBOutlet UIView *viewAdemasVer;
@property (strong, nonatomic) IBOutlet UITableView *tableViewAdemasVer;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoSpinner4;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *spinner4;


//---------- NOTAS MAS  LEIDAD Y COMENTADAS ----------

@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoSpinner2;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *spinner2;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloMas;
@property (strong, nonatomic) IBOutlet UIView *viewTituloUltimo;
@property (strong, nonatomic) IBOutlet UIView *viewTituloLoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenLineaLoMas;
- (IBAction)mostrarSeccionMas:(id)sender;
- (IBAction)mostrarDetalleNotasMas:(id)sender;

//Nota 1

@property (strong, nonatomic) IBOutlet UIView *viewNota1ConfotoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenNota1ConFotoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota1ConFotoMas;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota1ConFotoMas;

@property (strong, nonatomic) IBOutlet UIView *viewNota1SinFotoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota1SinFotoMas;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota1SinFotoMas;

//Nota 2

@property (strong, nonatomic) IBOutlet UIView *viewNota2ConfotoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenNota2ConFotoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota2ConFotoMas;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota2ConFotoMas;

@property (strong, nonatomic) IBOutlet UIView *viewNota2SinFotoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota2SinFotoMas;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota2SinFotoMas;

//Nota 3

@property (strong, nonatomic) IBOutlet UIView *viewNota3ConfotoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenNota3ConFotoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota3ConFotoMas;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota3ConFotoMas;

@property (strong, nonatomic) IBOutlet UIView *viewNota3SinFotoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota3SinFotoMas;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota3SinFotoMas;

//Nota 4

@property (strong, nonatomic) IBOutlet UIView *viewNota4ConfotoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenNota4ConFotoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota4ConFotoMas;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota4ConFotoMas;

@property (strong, nonatomic) IBOutlet UIView *viewNota4SinFotoMas;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoNota4SinFotoMas;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloNota4SinFotoMas;

//Notas de la 5 en adelante

@property (strong, nonatomic) IBOutlet UITableView *tableViewNotasMas;

//---------- NOTAS COLORES ----------

@property (strong, nonatomic) IBOutlet UITableView *tableViewNotasColores;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoSpinner5;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *spinner5;

////////////////////////////////////////////////////////////////////////////////////////////////// PUBLICIDAD //////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (nonatomic) int obtienePublicidad;
@property (retain, nonatomic) IBOutlet UIImageView *imagePublicidad1;
- (IBAction)mostrarPublicidad:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondoSpinner3;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *spinner3;

////////////////////////////////////////////////////////////////////////////////////////////// DATOS DEL SERVIDOR //////////////////////////////////////////////////////////////////////////////////////////////////////

@property (nonatomic, retain) NSMutableArray *arrayDatos;

//Clima
@property (nonatomic,retain) NSDictionary *climaDict;

//Secciones
@property (nonatomic, retain) NSArray *arraySecciones;

//Notas
@property (nonatomic, retain) NSMutableArray *arrayDatosPortada;
@property (nonatomic, retain) NSMutableArray *arrayDatosPrimeraNotaPortada;
@property (nonatomic, retain) NSMutableArray *arrayDatosNotasPortada;
@property (nonatomic, retain) NSMutableArray *arrayDatosOtrasNotasPortada;

//Focos (Destacamos)
@property (nonatomic, retain) NSMutableArray *arrayDatosFocos;

//Galerias
@property(retain,nonatomic) NSDictionary *galeriasDict;
@property(retain,nonatomic) NSArray *arrayDatosGalerias;

//SigloTV
@property (nonatomic, retain) NSMutableArray *arrayDatosSigloTV;

//Lo ultimo
@property (nonatomic, retain) NSMutableArray *arrayDatosLoUltimo;

//Ademas Ver
@property (nonatomic, retain) NSMutableArray *arrayDatosAdemasVer;

//Lo mas
@property (nonatomic, retain) NSMutableArray *arrayDatosLoMas;
@property (nonatomic, retain) NSMutableArray *arrayDatosNotasMas;
@property (nonatomic, retain) NSMutableArray *arrayDatosOtrasNotasMas;

//Publicidad
@property(retain,nonatomic)  NSDictionary *dictPub;
@property (nonatomic,retain) NSDictionary *publicidadDict;

//NotasColor
@property (nonatomic, retain) NSMutableArray *arrayDatosNotasColor;

@end
