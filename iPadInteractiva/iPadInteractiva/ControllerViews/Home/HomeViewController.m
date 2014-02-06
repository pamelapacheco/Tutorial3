//
//  HomeViewController.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 22/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

//Controladores
#import "HomeViewController.h"

//Datos de inicio de secciones
#define kTableNotas 1
#define kTableFocos 2
#define kTableLoUltimo 3
#define kTableLoMas 4
#define kTableGalerias 5
#define kTableSigloTV 6
#define kTableAdemasVer 7
#define kTableNotasColor 8

#define kOrientacionPortrait 1
#define kOrientacionLandscape 2

#define kPortada 1000
#define kFocos 9000
#define kUltimo 4000
#define kLeido 2000
#define kComentado 3000
#define kSigloTV 6000
#define kAdemasVer 7000
#define kNotasColor 8000

/////////////////////////////////////////////

@interface HomeViewController ()

@end

@implementation HomeViewController

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
    
    //Secciones
    self.contadorViewSecciones = 0;
    self.menuSecciones.alpha = 0.0;
    
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
    self.statusBarOrientation = [UIApplication sharedApplication].statusBarOrientation;
    
    if (self.orientation == 0 || self.orientation == 5)
        self.orientacionView = self.statusBarOrientation;
    else
        self.orientacionView = self.orientation;
    
    if (self.orientacionView == UIInterfaceOrientationPortrait || self.orientacionView == UIInterfaceOrientationPortraitUpsideDown)
        [self orientacionPortrait];
    else if(self.orientacionView == UIInterfaceOrientationLandscapeLeft || self.orientacionView == UIInterfaceOrientationLandscapeRight)
        [self orientacionLandscape];
    
    [self temperaturaActual];
}

#pragma mark - Orientacion Portrait

-(void)orientacionPortrait{
    
    if (self.contadorMostrarViewMenu == 1)
    {
        self.menu1Landscape.transform =  CGAffineTransformMakeTranslation (0, 0);
        self.menu2Landscape.transform =  CGAffineTransformMakeTranslation (0, 0);
        self.menu3Landscape.transform =  CGAffineTransformMakeTranslation (0, 0);

        self.menu1Portrait.transform =  CGAffineTransformMakeTranslation (-512, 0);
        self.menu2Portrait.transform =  CGAffineTransformMakeTranslation (-1024, 0);
    }
    
    [self.navigationbar1Landscape removeFromSuperview];
    [self.navigationbar1Portrait removeFromSuperview];
    self.orientacionSplash = kOrientacionPortrait;
    
    if (contadorSplash != 1)
    {
        self.viewSplashPortrait.alpha = 1.0;
        self.viewSplashLandscape.alpha = 0.0;
    }
    
    [self.navigationController.navigationBar addSubview:[self configurarNavigationBarPortrait]];
    
    self.scrollViewPrincipal.contentSize = CGSizeMake(0, 4535);
    
    [self.viewParte2 setFrame:CGRectMake(0, 690, self.viewParte2.frame.size.width, self.viewParte2.frame.size.height)];
    [self.viewParte3 setFrame:CGRectMake(0, 1380, self.viewParte3.frame.size.width, self.viewParte3.frame.size.height)];
    [self.viewParte4 setFrame:CGRectMake(0, 2070, self.viewParte3.frame.size.width, self.viewParte3.frame.size.height)];
}

#pragma mark - Orientacion Landscape

-(void)orientacionLandscape{
    
    if (self.contadorMostrarViewMenu == 1)
    {
        self.menu1Portrait.transform =  CGAffineTransformMakeTranslation (0, 0);
        self.menu2Portrait.transform =  CGAffineTransformMakeTranslation (0, 0);
        
        self.menu1Landscape.transform =  CGAffineTransformMakeTranslation (-341, 0);
        self.menu2Landscape.transform =  CGAffineTransformMakeTranslation (-682, 0);
        self.menu3Landscape.transform =  CGAffineTransformMakeTranslation (-1024, 0);
    }
    
    [self.navigationbar1Landscape removeFromSuperview];
    [self.navigationbar1Portrait removeFromSuperview];
    self.orientacionSplash = kOrientacionLandscape;
    
    if (contadorSplash != 1)
    {
        self.viewSplashPortrait.alpha = 0.0;
        self.viewSplashLandscape.alpha = 1.0;
    }
    
    [self.navigationController.navigationBar addSubview:[self configurarNavigationBarLandscape]];
    
    self.scrollViewPrincipal.contentSize = CGSizeMake(3315, 0);
    
    [self.viewParte2 setFrame:CGRectMake(760, 0, self.viewParte2.frame.size.width, self.viewParte2.frame.size.height)];
    [self.viewParte3 setFrame:CGRectMake(1528, 0, self.viewParte3.frame.size.width, self.viewParte3.frame.size.height)];
    [self.viewParte4 setFrame:CGRectMake(2290, 0, self.viewParte3.frame.size.width, self.viewParte3.frame.size.height)];
}

//********************************************************************************************************************************************************************************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////// NAVIGATION BAR ////////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* NAVIGATION BAR *******

-(UIView*)configurarNavigationBarLandscape{
    
    self.navigationItem.hidesBackButton = YES;
    
    // iOS7
    if([self.navigationController.navigationBar respondsToSelector:@selector(barTintColor)])
        self.imagenNavBar = [UIImage imageNamed:@"header_landscape_iOS7.png"];
    // older
    else
        self.imagenNavBar = [UIImage imageNamed:@"header_landscape_iOS6.png"];
    
    [self.navigationController.navigationBar setBackgroundImage:self.imagenNavBar forBarMetrics:UIBarMetricsDefault];
    
    self.navigationbar1Landscape = [Navigationbar1Landscape customView];
    self.navigationbar1Landscape.frame = CGRectMake(0, 0, 1024, 44);
    self.navigationbar1Landscape.delegateNavigationbar1Landscape = self;
    self.navigationbar1Landscape.lbFecha.font = [UIFont fontWithName:FONT_Regular size:16.0f];
    
    return  self.navigationbar1Landscape;
}

-(UIView*)configurarNavigationBarPortrait{
    
    self.navigationItem.hidesBackButton = YES;
    
    // iOS7
    if([self.navigationController.navigationBar respondsToSelector:@selector(barTintColor)])
        self.imagenNavBar = [UIImage imageNamed:@"header_portrait_iOS7.png"];
    // older
    else
        self.imagenNavBar = [UIImage imageNamed:@"header_portrait_iOS6.png"];
    
    [self.navigationController.navigationBar setBackgroundImage:self.imagenNavBar forBarMetrics:UIBarMetricsDefault];
    
    self.navigationbar1Portrait = [Navigationbar1Portrait customView];
    self.navigationbar1Portrait.frame = CGRectMake(0, 0, 1024, 44);
    self.navigationbar1Portrait.delegateNavigationbar1Portrait = self;
    self.navigationbar1Portrait.lbFecha.font = [UIFont fontWithName:FONT_Regular size:16.0f];
    
    return self.navigationbar1Portrait;
}

-(void)animacionPushNavigator{
    
    CATransition* transition = [CATransition animation];
    transition.duration = 0.3;
    transition.type = kCATransitionFade;
    transition.subtype = kCATransitionFromTop;
    [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
}

#pragma mark - Delegados del navigationbar

-(void)buscarNota{
    
    NSLog(@"Buscar...");
}

-(void)abrirAppPublish{
    
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *URLEncodedText = [@"Aplicacion abierta desde la app El Siglo de Torreón Interactiva" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *ourPath = [@"sigloTorreonImpreso://" stringByAppendingString:URLEncodedText];
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    
    if ([ourApplication canOpenURL:ourURL])
        [ourApplication openURL:ourURL];
    else
    {
        NSString *appString = @"https://itunes.apple.com/mx/app/el-siglo-de-torreon-para-ipad/id491539145";
        
        NSURL *url = [[NSURL alloc] initWithString:appString];
        [[UIApplication sharedApplication] openURL:url];
    }
}

//********************************************************************************************************************************************************************************************************************//
/////////////////////////////////////////////////////////////////////////////////////////////// DATOS DE INICIO ////////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* DATOS DE INICIO *******

-(void)metodosInicio{
    
    //Crear menu principal
    [self crearMenuPrincipal];
    
    //Desliega spinner
    [self despliegaHUD];
    
    //Metodo para resetear o limpiar info de los elementos
    [self datosDeInicio];
    
    //Configurar Elementos Graficos
    [self configurarElementosGraficos];
    
    //Obtener CLIMA
    [self obtenerClima];
}

#pragma mark - Datos de inicio

-(void)datosDeInicio{
    
    contadorSplash = 0;
    
    self.imagenFondoSpinner.layer.cornerRadius = 8.0;
    self.imagenFondoSpinner.layer.masksToBounds = YES;
    self.imagenFondoSpinner1.layer.cornerRadius = 8.0;
    self.imagenFondoSpinner1.layer.masksToBounds = YES;
    self.imagenFondoSpinner2.layer.cornerRadius = 8.0;
    self.imagenFondoSpinner2.layer.masksToBounds = YES;
    self.imagenFondoSpinner3.layer.cornerRadius = 8.0;
    self.imagenFondoSpinner3.layer.masksToBounds = YES;
    self.imagenFondoSpinner4.layer.cornerRadius = 8.0;
    self.imagenFondoSpinner4.layer.masksToBounds = YES;
    self.imagenFondoSpinner5.layer.cornerRadius = 8.0;
    self.imagenFondoSpinner5.layer.masksToBounds = YES;
    
    self.lbTituloSeccion.text = @"PORTADA";
    
    self.seccionidLoMas = kUltimo;
    
    //Navigationbar
    self.navigationController.navigationBarHidden = YES;
    
    //Status bar
    contadorStatusHidde = 0;
    
    //Horizontal TableView notas, focos y servicios
    self.tableViewNotasPortada.transform = CGAffineTransformMakeRotation(-M_PI_2);
    self.tableViewFocos.transform = CGAffineTransformMakeRotation(-M_PI_2);
    self.tableViewGalerias.transform = CGAffineTransformMakeRotation(-M_PI_2);
    self.tableViewSigloTV.transform = CGAffineTransformMakeRotation(-M_PI_2);
    self.tableViewNotasMas.transform = CGAffineTransformMakeRotation(-M_PI_2);
    self.tableViewAdemasVer.transform = CGAffineTransformMakeRotation(-M_PI_2);
    
    //Spinners
    
    self.imagenFondoSpinner.hidden = NO;
    self.spinner.hidden = NO;
    [self.spinner startAnimating];
    
    self.imagenFondoSpinner1.hidden = NO;
    self.spinner1.hidden = NO;
    [self.spinner1 startAnimating];
    
    self.imagenFondoSpinner2.hidden = NO;
    self.spinner2.hidden = NO;
    [self.spinner2 startAnimating];
    
    self.imagenFondoSpinner3.hidden = NO;
    self.spinner3.hidden = NO;
    [self.spinner3 startAnimating];
    
    self.imagenFondoSpinner4.hidden = NO;
    self.spinner4.hidden = NO;
    [self.spinner4 startAnimating];
    
    self.imagenFondoSpinner5.hidden = NO;
    self.spinner5.hidden = NO;
    [self.spinner5 startAnimating];
}

#pragma mark - Configurar Elementos Graficos

-(void)configurarElementosGraficos{
    
    self.imagenFondoFocos.backgroundColor = COLOR_AZUL;
    self.viewTituloUltimo.backgroundColor = COLOR_AZUL;
    self.viewAdemasVer.backgroundColor = COLOR_AZUL;
    self.viewTituloLoMas.backgroundColor = COLOR_AZUL;
    
    self.lbTituloSeccion.textColor = COLOR_PORTADA;
    self.imagenLineaSecciones.backgroundColor = COLOR_PORTADA;
    
    self.imagenLineaLoMas.backgroundColor = COLOR_ROJO;
    self.imagenLineaLoUltimo.backgroundColor = COLOR_ROJO;
    
    self.lbTituloConFoto.font = [UIFont fontWithName:FONT_Bold size:27.0f];
    self.lbTituloSinFoto.font = [UIFont fontWithName:FONT_Bold size:42.0f];
    self.lbDescripcion.font = [UIFont fontWithName:FONT_Regular size:22.0f];
    self.lbTituloSeccion.font = [UIFont fontWithName:FONT_Bold size:24.0f];
    self.lbTituloUltimo.font = [UIFont fontWithName:FONT_Bold size:24.0f];
    self.lbTituloMas.font = [UIFont fontWithName:FONT_Bold size:24.0f];
    
    self.lbTituloNota1ConFoto.font = [UIFont fontWithName:FONT_Bold size:22.0f];
    self.lbTituloNota2ConFoto.font = [UIFont fontWithName:FONT_Bold size:22.0f];
    self.lbTituloNota3ConFoto.font = [UIFont fontWithName:FONT_Bold size:22.0f];
    self.lbTituloNota4ConFoto.font = [UIFont fontWithName:FONT_Bold size:22.0f];
    self.lbTituloNota1SinFoto.font = [UIFont fontWithName:FONT_Bold size:27.0f];
    self.lbTituloNota2SinFoto.font = [UIFont fontWithName:FONT_Bold size:27.0f];
    self.lbTituloNota3SinFoto.font = [UIFont fontWithName:FONT_Bold size:27.0f];
    self.lbTituloNota4SinFoto.font = [UIFont fontWithName:FONT_Bold size:27.0f];
    
    self.lbTituloNota1ConFotoMas.font = [UIFont fontWithName:FONT_Bold size:22.0f];
    self.lbTituloNota2ConFotoMas.font = [UIFont fontWithName:FONT_Bold size:22.0f];
    self.lbTituloNota3ConFotoMas.font = [UIFont fontWithName:FONT_Bold size:22.0f];
    self.lbTituloNota4ConFotoMas.font = [UIFont fontWithName:FONT_Bold size:22.0f];
    self.lbTituloNota1SinFotoMas.font = [UIFont fontWithName:FONT_Bold size:27.0f];
    self.lbTituloNota2SinFotoMas.font = [UIFont fontWithName:FONT_Bold size:27.0f];
    self.lbTituloNota3SinFotoMas.font = [UIFont fontWithName:FONT_Bold size:27.0f];
    self.lbTituloNota4SinFotoMas.font = [UIFont fontWithName:FONT_Bold size:27.0f];
}

#pragma mark - Animacion para las vistas del menu

-(void)animacionView{
    
    [UIView beginAnimations:NULL context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
}

//********************************************************************************************************************************************************************************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////// SPLASH ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ********** SPLASH **********

-(void)ocultarSplash{

        self.viewSplashPortrait.alpha = 0.0f;
        self.viewSplashLandscape.alpha = 0.0f;
    
    contadorSplash = 1;
}

//********************************************************************************************************************************************************************************************************************//
///////////////////////////////////////////////////////////////////////////////////////////// CLIMA Y FECHA ////////////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ********** CLIMA Y FECHA **********

#pragma mark - Clima

-(void)temperaturaActual{
    
    if (self.climaDict != nil)
    {
        NSString *nameIcono = [[[self.climaDict valueForKey:@"actual"]valueForKey:@"icono"]objectAtIndex:0];
        
        //Portrait
        self.imagenClima.image = [UIImage imageNamed:nameIcono];
        self.navigationbar1Portrait.imagenClima.image = [UIImage imageNamed:nameIcono];
        
        //Landscape
        self.imagenClimaLands.image = [UIImage imageNamed:nameIcono];
        self.navigationbar1Landscape.imagenClima.image = [UIImage imageNamed:nameIcono];
        
        
        self.climaActual = [NSString stringWithFormat:@"%@ºC",[[[self.climaDict valueForKey:@"actual"]valueForKey:@"gradosc"]objectAtIndex:0]];
        
        //Fecha
        [self fechaActual];
    }
}

#pragma mark - Fecha

-(void)fechaActual{
    
    NSDate *currDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd-MM-YYYY"];
    NSString *dateString = [dateFormatter stringFromDate:currDate];
    self.idCharactersFecha = [NSMutableString string];
    
    for (int i = 0; i < 10; i++)
    {
        NSString * firstLetter = [dateString substringWithRange:[dateString rangeOfComposedCharacterSequenceAtIndex:i]];
        
        if (i == 3 || i == 4)
        {
            if ([firstLetter integerValue] == 0 && i == 3)
                self.mesO = @"si";
            
            if ([self.mesO isEqualToString:@"si"])
            {
                int num = [firstLetter integerValue];
                
                if (num > 0)
                {
                    switch (num)
                    {
                        case 1:
                            [self.idCharactersFecha appendString:@"Enero"];
                            break;
                        case 2:
                            [self.idCharactersFecha appendString:@"Febrero"];
                            break;
                        case 3:
                            [self.idCharactersFecha appendString:@"Marzo"];
                            break;
                        case 4:
                            [self.idCharactersFecha appendString:@"Abril"];
                            break;
                        case 5:
                            [self.idCharactersFecha appendString:@"Mayo"];
                            break;
                        case 6:
                            [self.idCharactersFecha appendString:@"Junio"];
                            break;
                        case 7:
                            [self.idCharactersFecha appendString:@"Julio"];
                            break;
                        case 8:
                            [self.idCharactersFecha appendString:@"Agosto"];
                            break;
                        case 9:
                            [self.idCharactersFecha appendString:@"Septiembre"];
                            break;
                        default:
                            break;
                    }
                    
                    self. mesO = @"no";
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
                            [self.idCharactersFecha appendString:@"Octubre"];
                            break;
                        case 1:
                            [self.idCharactersFecha appendString:@"Noviembre"];
                            break;
                        case 2:
                            [self.idCharactersFecha appendString:@"Diciembre"];
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
                [self.idCharactersFecha appendString:signo];
            }
            else
                [self.idCharactersFecha appendString:firstLetter];
        }
    }
    
    //Portrrait
    self.lbFecha.text = self.idCharactersFecha;
    self.lbTemperatura.text = self.climaActual;
    self.navigationbar1Portrait.lbFecha.text = [NSString stringWithFormat:@"%@ - %@",self.idCharactersFecha,self.climaActual];
    
    //Landscape
    self.lbFechaLands.text = self.idCharactersFecha;
    self.lbTempreraturaLands.text = self.climaActual;
    self.navigationbar1Landscape.lbFecha.text = [NSString stringWithFormat:@"%@ - %@",self.idCharactersFecha,self.climaActual];
}

//********************************************************************************************************************************************************************************************************************//
//////////////////////////////////////////////////////////////////////////////////////////// MENU PRINCIPAL ////////////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* MENU PRINCIPAL *******

-(void)crearMenuPrincipal{
    
    //PORTRAIT
    
    self.menu2Portrait = [Menu2Portrait customView];
    [self.menu2Portrait configurarToolBar];
    self.menu2Portrait.frame = CGRectMake(1024, 0, self.menu2Portrait.frame.size.width, self.menu2Portrait.frame.size.height);
    //self.menu1Portrait.alpha = 0.0;
    //self.menu1Portrait.delegateMenuSecciones = self;
    [self.view addSubview:self.menu2Portrait];

    self.menu1Portrait = [Menu1Portrait customView];
    [self.menu1Portrait configurarToolBar];
    self.menu1Portrait.frame = CGRectMake(1024, 0, self.menu1Portrait.frame.size.width, self.menu1Portrait.frame.size.height);
    //self.menu1Portrait.alpha = 0.0;
    //self.menu1Portrait.delegateMenuSecciones = self;
    [self.view addSubview:self.menu1Portrait];
    
    //LANDSCAPE
    
    self.menu3Landscape = [Menu3Landscape customView];
    [self.menu3Landscape configurarToolBar];
    self.menu3Landscape.frame = CGRectMake(1024, 0, self.menu3Landscape.frame.size.width, self.menu3Landscape.frame.size.height);
    //self.menu1Portrait.alpha = 0.0;
    //self.menu1Portrait.delegateMenuSecciones = self;
    [self.view addSubview:self.menu3Landscape];

    self.menu2Landscape = [Menu2Landscape customView];
    [self.menu2Landscape configurarToolBar];
    self.menu2Landscape.frame = CGRectMake(1024, 0, self.menu2Landscape.frame.size.width, self.menu2Landscape.frame.size.height);
    //self.menu1Portrait.alpha = 0.0;
    //self.menu1Portrait.delegateMenuSecciones = self;
    [self.view addSubview:self.menu2Landscape];
    
    self.menu1Landscape = [Menu1Landscape customView];
    [self.menu1Landscape configurarToolBar];
    self.menu1Landscape.frame = CGRectMake(1024, 0, self.menu1Landscape.frame.size.width, self.menu1Landscape.frame.size.height);
    //self.menu1Portrait.alpha = 0.0;
    //self.menu1Portrait.delegateMenuSecciones = self;
    [self.view addSubview:self.menu1Landscape];


    [self.view addSubview:self.viewBotonMenuPortrait];
    [self.view addSubview:self.viewBotonMenuLandscape];
    
    [self.view addSubview:self.viewSplashLandscape];
    [self.view addSubview:self.viewSplashPortrait];
}

- (IBAction)mostrarMenuPrincipal:(id)sender {
    
    UIButton *btnMenu = (UIButton *)sender;
    
    if (btnMenu.tag == 1)
    {
        if (self.contadorMostrarViewMenu == 0)
        {
            self.contadorMostrarViewMenu = 1;
            [self mostrarMenuPrinpalPortrait];
        }
        else
        {
            self.contadorMostrarViewMenu = 0;
           [self ocultarMenuPrinpalPortrait];
        }
    }
    else
    {
        if (self.contadorMostrarViewMenu == 0)
        {
            self.contadorMostrarViewMenu = 1;
            [self mostrarMenuPrinpalLandscape];
        }
        else
        {
            self.contadorMostrarViewMenu = 0;
            [self ocultarMenuPrinpalLandscape];
        }
    }
}

-(void)mostrarMenuPrinpalPortrait{
    
    [UIView beginAnimations:NULL context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationDelegate:self];
    self.menu1Portrait.transform =  CGAffineTransformMakeTranslation (-512, 0);
    [UIView commitAnimations];
    
    [UIView beginAnimations:NULL context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationDelegate:self];
    self.menu2Portrait.transform =  CGAffineTransformMakeTranslation (-1024, 0);
    [UIView commitAnimations];
}

-(void)ocultarMenuPrinpalPortrait{
    
    [self animacionView];
    self.menu1Portrait.transform =  CGAffineTransformMakeTranslation (0, 0);
    self.menu2Portrait.transform =  CGAffineTransformMakeTranslation (0, 0);
    [UIView commitAnimations];
}

-(void)mostrarMenuPrinpalLandscape{
    
    [UIView beginAnimations:NULL context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationDelegate:self];
    self.menu1Landscape.transform =  CGAffineTransformMakeTranslation (-341, 0);
    [UIView commitAnimations];
    
    [UIView beginAnimations:NULL context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationDelegate:self];
    self.menu2Landscape.transform =  CGAffineTransformMakeTranslation (-682, 0);
    [UIView commitAnimations];
    
    [UIView beginAnimations:NULL context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    self.menu3Landscape.transform =  CGAffineTransformMakeTranslation (-1024, 0);
    [UIView commitAnimations];
}

-(void)ocultarMenuPrinpalLandscape{
    
    [self animacionView];
    self.menu1Landscape.transform =  CGAffineTransformMakeTranslation (0, 0);
    self.menu2Landscape.transform =  CGAffineTransformMakeTranslation (0, 0);
    self.menu3Landscape.transform =  CGAffineTransformMakeTranslation (0, 0);
    [UIView commitAnimations];
}

//********************************************************************************************************************************************************************************************************************//
/////////////////////////////////////////////////////////////////////////////////////////////// SECCIONES //////////////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* SECCIONES *******

-(void)crearMenuSecciones{
    
    self.menuSecciones = [MenuSecciones customView];
    [self.menuSecciones configurarToolBarSecciones];
    self.menuSecciones.frame = CGRectMake(19, 68, self.menuSecciones.frame.size.width, self.menuSecciones.frame.size.height);
    self.menuSecciones.alpha = 0.0;
    self.menuSecciones.delegateMenuSecciones = self;
    [self.viewParte2 addSubview:self.menuSecciones];
}

- (IBAction)mostrarSecciones:(id)sender {
    
    if ((self.contadorViewSecciones%2)== 0)
        self.menuSecciones.alpha = 1.0;
    else
        self.menuSecciones.alpha = 0.0;
    
    self.contadorViewSecciones++;
}

-(void)mostrarNotasSecciones:(id)sender {
    
    self.menuSecciones.alpha = 0.0;
    self.imagenFondoSpinner.hidden = NO;
    self.spinner.hidden = NO;
    [self.spinner startAnimating];
    
    self.contadorEntroCambiarSeccion = 1;
    
    UIButton *btnSeccion = (UIButton *)sender;
    
    self.lbTituloSeccion.text = [[[self.arraySecciones valueForKey:@"nombre"] objectAtIndex:btnSeccion.tag] uppercaseString];
    self.idSeccion = [[[self.arraySecciones valueForKey:@"id" ]objectAtIndex:btnSeccion.tag] intValue];
    
    [CommManager sharedInstance].notasDelegate = self;
    [self obtieneNotasDeSeccion:self.idSeccion];
    
    switch (btnSeccion.tag)
    {
        case 0:
        {
            //PORTADA
            self.lbTituloSeccion.textColor = COLOR_PORTADA;
            self.imagenLineaSecciones.backgroundColor = COLOR_PORTADA;
        }
            break;
        case 1:
        {
            //TORREON
            self.lbTituloSeccion.textColor = COLOR_TORREON;
            self.imagenLineaSecciones.backgroundColor = COLOR_TORREON;
        }
            break;
        case 2:
        {
            //POLICIACA
            self.lbTituloSeccion.textColor = COLOR_POLICIACA;
            self.imagenLineaSecciones.backgroundColor = COLOR_POLICIACA;
        }
            break;
        case 3:
        {
            //NACIONAL
            self.lbTituloSeccion.textColor = COLOR_NACIONAL;
            self.imagenLineaSecciones.backgroundColor = COLOR_NACIONAL;
        }
            break;
        case 4:
        {
            //INTERNACIONAL
            self.lbTituloSeccion.textColor = COLOR_INTERNACIONAL;
            self.imagenLineaSecciones.backgroundColor = COLOR_INTERNACIONAL;
        }
            break;
        case 5:
        {
            //DEPORTES
            self.lbTituloSeccion.textColor = COLOR_DEPORTES;
            self.imagenLineaSecciones.backgroundColor = COLOR_DEPORTES;
        }
            break;
        case 6:
        {
            //ESPECTACULOS
            self.lbTituloSeccion.textColor = COLOR_ESPECTACULOS;
            self.imagenLineaSecciones.backgroundColor = COLOR_ESPECTACULOS;
        }
            break;
        case 7:
        {
            //FINANZAS
            self.lbTituloSeccion.textColor = COLOR_FINANZAS;
            self.imagenLineaSecciones.backgroundColor = COLOR_FINANZAS;
        }
            break;
        case 8:
        {
            //EDITORIAL
            self.lbTituloSeccion.textColor = COLOR_EDITORIAL;
            self.imagenLineaSecciones.backgroundColor = COLOR_EDITORIAL;
        }
            break;
        case 9:
        {
            //NOSOTROS
            self.lbTituloSeccion.textColor = COLOR_NOSOTROS;
            self.imagenLineaSecciones.backgroundColor = COLOR_NOSOTROS;
        }
            break;
        case 10:
        {
            //CULTURA
            self.lbTituloSeccion.textColor = COLOR_CULTURA;
            self.imagenLineaSecciones.backgroundColor = COLOR_CULTURA;
        }
            break;
        case 11:
        {
            //REGIONALES
            self.lbTituloSeccion.textColor = COLOR_REGIONALES;
            self.imagenLineaSecciones.backgroundColor = COLOR_REGIONALES;
        }
            break;
        case 12:
        {
            //GP Y LERDO
            self.lbTituloSeccion.textColor = COLOR_GP;
            self.imagenLineaSecciones.backgroundColor = COLOR_GP;
        }
            break;
        case 13:
        {
            //SALTILLO
            self.lbTituloSeccion.textColor = COLOR_SALTILLO;
            self.imagenLineaSecciones.backgroundColor = COLOR_SALTILLO;
        }
            break;
        case 14:
        {
            //DURANGO
            self.lbTituloSeccion.textColor = COLOR_DURANGO;
            self.imagenLineaSecciones.backgroundColor = COLOR_DURANGO;
        }
            break;
        case 15:
        {
            //LA I LAGUNA
            self.lbTituloSeccion.textColor = COLOR_LALAGUNA;
            self.imagenLineaSecciones.backgroundColor = COLOR_LALAGUNA;
        }
            break;
        case 16:
        {
            //SALUD
            self.lbTituloSeccion.textColor = COLOR_SALUD;
            self.imagenLineaSecciones.backgroundColor = COLOR_SALUD;
        }
            break;
        case 17:
        {
            //SUCESOS
            self.lbTituloSeccion.textColor = COLOR_SUCESOS;
            self.imagenLineaSecciones.backgroundColor = COLOR_SUCESOS;
        }
            break;
        case 18:
        {
            //CIENCIA
            self.lbTituloSeccion.textColor = COLOR_CIENCIA;
            self.imagenLineaSecciones.backgroundColor = COLOR_CIENCIA;
        }
            break;
        case 19:
        {
            //SIGLO NUEVO
            self.lbTituloSeccion.textColor = COLOR_SN;
            self.imagenLineaSecciones.backgroundColor = COLOR_SN;
        }
            break;
        case 21:
        {
            //TECNOLOGIA
            self.lbTituloSeccion.textColor = COLOR_TECNOLOGIA;
            self.imagenLineaSecciones.backgroundColor = COLOR_TECNOLOGIA;
        }
            break;
        case 22:
        {
            //DOCTOR EN CASA
            self.lbTituloSeccion.textColor = COLOR_DC;
            self.imagenLineaSecciones.backgroundColor = COLOR_DC;
        }
            break;
        case 23:
        {
            //SANTOS
            self.lbTituloSeccion.textColor = COLOR_SANTOS;
            self.imagenLineaSecciones.backgroundColor = COLOR_SANTOS;
        }
            break;
        case 28:
        {
            //CARTELERA
            self.lbTituloSeccion.textColor = COLOR_CARTELERA;
            self.imagenLineaSecciones.backgroundColor = COLOR_CARTELERA;
        }
            break;
        default:
            break;
    }
}

//********************************************************************************************************************************************************************************************************************//
//////////////////////////////////////////////////////////////////////////////////////////// NOTAS DE LA PORTADA ///////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* NOTAS DE LA PORTADA *******

//////////////////////////////////////////////////////////////////////////////////////////////// NOTA PRINCIPAL ////////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Nota principal

-(void)notaPortadaPrincipal{
    
    @try
    {
        if ([[[self.arrayDatosPrimeraNotaPortada valueForKey:@"data"] objectAtIndex:0]isEqualToString:IMG_CELDA_DEFAULT])
        {
            self.viewNotaPrincipalConFoto.hidden = YES;
            self.viewNotaPrincipalSinFoto.hidden = NO;
            
            //Titulo
            self.lbTituloSinFoto.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosPrimeraNotaPortada valueForKey:@"titulo"] objectAtIndex:0]];
            
            //Descripcion
            
            NSString *descripcion = [[self.arrayDatosPrimeraNotaPortada valueForKey:@"texto"] objectAtIndex:0];
            NSString *newString = [[descripcion componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] componentsJoinedByString:@" "];
            descripcion = [newString stringByReplacingOccurrencesOfString:@"   " withString:@""];
            
            self.lbDescripcion.text = [NSString stringWithFormat:@"%@...",descripcion];
        }
        else
        {
            self.viewNotaPrincipalConFoto.hidden = NO;
            self.viewNotaPrincipalSinFoto.hidden = YES;
            
            //Titulo
            self.lbTituloConFoto.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosPrimeraNotaPortada valueForKey:@"titulo"] objectAtIndex:0]];
            
            //Imagen
            NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:[[self.arrayDatosPrimeraNotaPortada objectAtIndex:0]objectForKey:@"data"]]];
            
            [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
             {
                 if (!error)
                 {
                     //Imagen
                     UIImage *imageNota = [UIImage imageWithData:data];
                     
                     self.oldWidth = imageNota.size.width;
                     self.scaleFactor = 700 / self.oldWidth;
                     
                     float newHeight = imageNota.size.height * self.scaleFactor;
                     float newWidth = self.oldWidth * self.scaleFactor;
                     
                     UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
                     [imageNota drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
                     UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
                     UIGraphicsEndImageContext();
                     
                     self.imagenNotaPrincipalConFoto.image = newImage;
                 }
             }];
        }
    }
    @catch (NSException *exception)
    {
        self.viewNotaPrincipalConFoto.hidden = YES;
        self.viewNotaPrincipalSinFoto.hidden = NO;
        
        //Titulo
        self.lbTituloSinFoto.text = @" ";
        
        //Descripcion
        self.lbDescripcion.text = @" ";
        
    }
}

- (IBAction)mostrarDetalleNotaPrincipal:(id)sender {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self.navigationbar1Landscape removeFromSuperview];
    [self.navigationbar1Portrait removeFromSuperview];
    
    self.infoNotaViewController = [[InfoNotaViewController alloc] initWithNibName:@"InfoNotaViewController" bundle:nil];
    //self.infoNotaViewController.delegateDetalle = self;
    
    self.infoNotaViewController.arrayDatos = [self.arrayDatosPrimeraNotaPortada objectAtIndex:0];
    self.infoNotaViewController.seccion = @"Portada";
    
    [self animacionPushNavigator];
    [self.navigationController pushViewController:self.infoNotaViewController animated:NO];
}

/////////////////////////////////////////////////////////////////////////////////////////////// NOTAS DE PORTADA ///////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Notas Portada

-(void)notasDePortada{
    
    [self infoNota1];
    [self infoNota2];
    [self infoNota3];
    [self infoNota4];
}

-(void)infoNota1{
    
    @try
    {
        if ([[[self.arrayDatosNotasPortada valueForKey:@"data"] objectAtIndex:0]isEqualToString:IMG_CELDA_DEFAULT])
        {
            self.viewNota1Confoto.hidden = YES;
            self.viewNota1SinFoto.hidden = NO;
            
            //Titulo
            self.lbTituloNota1SinFoto.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasPortada valueForKey:@"titulo"] objectAtIndex:0]];
        }
        else
        {
            self.viewNota1Confoto.hidden = NO;
            self.viewNota1SinFoto.hidden = YES;
            
            //Titulo
            self.lbTituloNota1ConFoto.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasPortada valueForKey:@"titulo"] objectAtIndex:0]];
            
            //Imagen
            NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:[[self.arrayDatosNotasPortada objectAtIndex:0]objectForKey:@"data"]]];
            [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
             {
                 if (!error)
                 {
                     //Imagen
                     UIImage *imageNota = [UIImage imageWithData:data];
                     
                     self.oldWidth = imageNota.size.width;
                     
                     if (imageNota.size.height < 300 )
                         self.scaleFactor = 450 / self.oldWidth;
                     else
                         self.scaleFactor = 350 / self.oldWidth;
                     
                     float newHeight = imageNota.size.height * self.scaleFactor;
                     float newWidth = self.oldWidth * self.scaleFactor;
                     
                     UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
                     [imageNota drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
                     UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
                     UIGraphicsEndImageContext();
                     
                     self.imagenNota1ConFoto.image = newImage;
                 }
             }];
        }
    }
    @catch (NSException *exception)
    {
        self.viewNota1Confoto.hidden = YES;
        self.viewNota1SinFoto.hidden = NO;
        
        //Titulo
        self.lbTituloNota1SinFoto.text = @" ";
    }
}

-(void)infoNota2{
    
    @try
    {
        if ([[[self.arrayDatosNotasPortada valueForKey:@"data"] objectAtIndex:1]isEqualToString:IMG_CELDA_DEFAULT])
        {
            self.viewNota2Confoto.hidden = YES;
            self.viewNota2SinFoto.hidden = NO;
            
            //Titulo
            self.lbTituloNota2SinFoto.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasPortada valueForKey:@"titulo"] objectAtIndex:1]];
        }
        else
        {
            self.viewNota2Confoto.hidden = NO;
            self.viewNota2SinFoto.hidden = YES;
            
            //Titulo
            self.lbTituloNota2ConFoto.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasPortada valueForKey:@"titulo"] objectAtIndex:1]];
            
            //Imagen
            NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:[[self.arrayDatosNotasPortada objectAtIndex:1]objectForKey:@"data"]]];
            [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
             {
                 if (!error)
                 {
                     //Imagen
                     UIImage *imageNota = [UIImage imageWithData:data];
                     
                     self.oldWidth = imageNota.size.width;
                     
                     if (imageNota.size.height < 300 )
                         self.scaleFactor = 450 / self.oldWidth;
                     else
                         self.scaleFactor = 350 / self.oldWidth;
                     
                     float newHeight = imageNota.size.height * self.scaleFactor;
                     float newWidth = self.oldWidth * self.scaleFactor;
                     
                     UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
                     [imageNota drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
                     UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
                     UIGraphicsEndImageContext();
                     
                     self.imagenNota2ConFoto.image = newImage;
                 }
             }];
        }
    }
    @catch (NSException *exception)
    {
        self.viewNota2Confoto.hidden = YES;
        self.viewNota2SinFoto.hidden = NO;
        
        //Titulo
        self.lbTituloNota2SinFoto.text = @" ";
    }
}

-(void)infoNota3{
    
    @try
    {
        if ([[[self.arrayDatosNotasPortada valueForKey:@"data"] objectAtIndex:2]isEqualToString:IMG_CELDA_DEFAULT])
        {
            self.viewNota3Confoto.hidden = YES;
            self.viewNota3SinFoto.hidden = NO;
            
            //Titulo
            self.lbTituloNota3SinFoto.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasPortada valueForKey:@"titulo"] objectAtIndex:2]];
        }
        else
        {
            self.viewNota3Confoto.hidden = NO;
            self.viewNota3SinFoto.hidden = YES;
            
            //Titulo
            self.lbTituloNota3ConFoto.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasPortada valueForKey:@"titulo"] objectAtIndex:2]];
            
            //Imagen
            NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:[[self.arrayDatosNotasPortada objectAtIndex:2]objectForKey:@"data"]]];
            [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
             {
                 if (!error)
                 {
                     //Imagen
                     UIImage *imageNota = [UIImage imageWithData:data];
                     
                     self.oldWidth = imageNota.size.width;
                     
                     if (imageNota.size.height < 300 )
                         self.scaleFactor = 450 / self.oldWidth;
                     else
                         self.scaleFactor = 350 / self.oldWidth;
                     
                     float newHeight = imageNota.size.height * self.scaleFactor;
                     float newWidth = self.oldWidth * self.scaleFactor;
                     
                     UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
                     [imageNota drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
                     UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
                     UIGraphicsEndImageContext();
                     
                     self.imagenNota3ConFoto.image = newImage;
                 }
             }];
        }
        
    }
    @catch (NSException *exception)
    {
        self.viewNota3Confoto.hidden = YES;
        self.viewNota3SinFoto.hidden = NO;
        
        //Titulo
        self.lbTituloNota3SinFoto.text = @" ";
    }
}

-(void)infoNota4{
    
    @try
    {
        if ([[[self.arrayDatosNotasPortada valueForKey:@"data"] objectAtIndex:3] isEqualToString:IMG_CELDA_DEFAULT])
        {
            self.viewNota4Confoto.hidden = YES;
            self.viewNota4SinFoto.hidden = NO;
            
            //Titulo
            self.lbTituloNota4SinFoto.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasPortada valueForKey:@"titulo"] objectAtIndex:3]];
        }
        else
        {
            self.viewNota4Confoto.hidden = NO;
            self.viewNota4SinFoto.hidden = YES;
            
            //Titulo
            self.lbTituloNota4ConFoto.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasPortada valueForKey:@"titulo"] objectAtIndex:3]];
            
            //Imagen
            NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:[[self.arrayDatosNotasPortada objectAtIndex:3]objectForKey:@"data"]]];
            [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
             {
                 if (!error)
                 {
                     //Imagen
                     UIImage *imageNota = [UIImage imageWithData:data];
                     
                     self.oldWidth = imageNota.size.width;
                     
                     if (imageNota.size.height < 300 )
                         self.scaleFactor = 450 / self.oldWidth;
                     else
                         self.scaleFactor = 350 / self.oldWidth;
                     
                     float newHeight = imageNota.size.height * self.scaleFactor;
                     float newWidth = self.oldWidth * self.scaleFactor;
                     
                     UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
                     [imageNota drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
                     UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
                     UIGraphicsEndImageContext();
                     
                     self.imagenNota4ConFoto.image = newImage;
                 }
             }];
        }
    }
    @catch (NSException *exception)
    {
        self.viewNota4Confoto.hidden = YES;
        self.viewNota4SinFoto.hidden = NO;
        
        //Titulo
        self.lbTituloNota4SinFoto.text = @" ";
    }
}

- (IBAction)mostrarDetalleDeLasNotas:(id)sender {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self.navigationbar1Landscape removeFromSuperview];
    [self.navigationbar1Portrait removeFromSuperview];
    
    UIButton *btnNota = (UIButton *)sender;
    
    self.infoNotaViewController = [[InfoNotaViewController alloc] initWithNibName:@"InfoNotaViewController" bundle:nil];
    //self.infoNotaViewController.delegateDetalle = self;
    
    self.infoNotaViewController.arrayDatos = [self.arrayDatosNotasPortada objectAtIndex:btnNota.tag];
    self.infoNotaViewController.seccion = @"Portada";
    
    [self animacionPushNavigator];
    [self.navigationController pushViewController:self.infoNotaViewController animated:NO];
    
}

//********************************************************************************************************************************************************************************************************************//
///////////////////////////////////////////////////////////////////////////////////// NOTAS MAS LEIDAS O COMENTADAS ////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* NOTAS MAS LEIDAS O COMENTADAS *******

- (IBAction)mostrarSeccionMas:(id)sender {
    
    self.imagenFondoSpinner2.hidden = NO;
    self.spinner2.hidden = NO;
    [self.spinner2 startAnimating];
    
    if (self.seccionLoMas == kLeido)
    {
        self.lbTituloMas.text = @"MÁS COMENTADO";
        self.seccionidLoMas = kComentado;
    }
    else
    {
        self.lbTituloMas.text = @"MÁS LEÍDO";
        self.seccionidLoMas = kLeido;
    }
    
    [self obtieneLoMas];
}

#pragma mark - Notas Mas

-(void)notasMasLeidasComentadas{
    
    [self infoNotaMas1];
    [self infoNotaMas2];
    [self infoNotaMas3];
    [self infoNotaMas4];
}

-(void)infoNotaMas1{
    
    if ([[[self.arrayDatosNotasMas valueForKey:@"data"] objectAtIndex:0]isEqualToString:IMG_CELDA_DEFAULT])
    {
        self.viewNota1ConfotoMas.hidden = YES;
        self.viewNota1SinFotoMas.hidden = NO;
        
        //Titulo
        self.lbTituloNota1SinFotoMas.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasMas valueForKey:@"titulo"] objectAtIndex:0]];
    }
    else
    {
        self.viewNota1ConfotoMas.hidden = NO;
        self.viewNota1SinFotoMas.hidden = YES;
        
        //Titulo
        self.lbTituloNota1ConFotoMas.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasMas valueForKey:@"titulo"] objectAtIndex:0]];
        
        //Imagen
        NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:[[self.arrayDatosNotasMas objectAtIndex:0]objectForKey:@"data"]]];
        [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
         {
             if (!error)
             {
                 //Imagen
                 UIImage *imageNota = [UIImage imageWithData:data];
                 
                 self.oldWidth = imageNota.size.width;
                 
                 if (imageNota.size.height < 300 )
                     self.scaleFactor = 450 / self.oldWidth;
                 else
                     self.scaleFactor = 350 / self.oldWidth;
                 
                 float newHeight = imageNota.size.height * self.scaleFactor;
                 float newWidth = self.oldWidth * self.scaleFactor;
                 
                 UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
                 [imageNota drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
                 UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
                 UIGraphicsEndImageContext();
                 
                 self.imagenNota1ConFotoMas.image = newImage;
             }
         }];
    }
}

-(void)infoNotaMas2{
    
    if ([[[self.arrayDatosNotasMas valueForKey:@"data"] objectAtIndex:1]isEqualToString:IMG_CELDA_DEFAULT])
    {
        self.viewNota2ConfotoMas.hidden = YES;
        self.viewNota2SinFotoMas.hidden = NO;
        
        //Titulo
        self.lbTituloNota2SinFotoMas.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasMas valueForKey:@"titulo"] objectAtIndex:1]];
    }
    else
    {
        self.viewNota2ConfotoMas.hidden = NO;
        self.viewNota2SinFotoMas.hidden = YES;
        
        //Titulo
        self.lbTituloNota2ConFotoMas.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasMas valueForKey:@"titulo"] objectAtIndex:1]];
        
        //Imagen
        NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:[[self.arrayDatosNotasMas objectAtIndex:1]objectForKey:@"data"]]];
        [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
         {
             if (!error)
             {
                 //Imagen
                 UIImage *imageNota = [UIImage imageWithData:data];
                 
                 self.oldWidth = imageNota.size.width;
                 
                 if (imageNota.size.height < 300 )
                     self.scaleFactor = 450 / self.oldWidth;
                 else
                     self.scaleFactor = 350 / self.oldWidth;
                 
                 float newHeight = imageNota.size.height * self.scaleFactor;
                 float newWidth = self.oldWidth * self.scaleFactor;
                 
                 UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
                 [imageNota drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
                 UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
                 UIGraphicsEndImageContext();
                 
                 self.imagenNota2ConFotoMas.image = newImage;
             }
         }];
    }
}

-(void)infoNotaMas3{
    
    if ([[[self.arrayDatosNotasMas valueForKey:@"data"] objectAtIndex:2]isEqualToString:IMG_CELDA_DEFAULT])
    {
        self.viewNota3ConfotoMas.hidden = YES;
        self.viewNota3SinFotoMas.hidden = NO;
        
        //Titulo
        self.lbTituloNota3SinFotoMas.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasMas valueForKey:@"titulo"] objectAtIndex:2]];
    }
    else
    {
        self.viewNota3ConfotoMas.hidden = NO;
        self.viewNota3SinFotoMas.hidden = YES;
        
        //Titulo
        self.lbTituloNota3ConFotoMas.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasMas valueForKey:@"titulo"] objectAtIndex:2]];
        
        //Imagen
        NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:[[self.arrayDatosNotasMas objectAtIndex:2]objectForKey:@"data"]]];
        [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
         {
             if (!error)
             {
                 //Imagen
                 UIImage *imageNota = [UIImage imageWithData:data];
                 
                 self.oldWidth = imageNota.size.width;
                 
                 if (imageNota.size.height < 300 )
                     self.scaleFactor = 450 / self.oldWidth;
                 else
                     self.scaleFactor = 350 / self.oldWidth;
                 
                 float newHeight = imageNota.size.height * self.scaleFactor;
                 float newWidth = self.oldWidth * self.scaleFactor;
                 
                 UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
                 [imageNota drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
                 UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
                 UIGraphicsEndImageContext();
                 
                 self.imagenNota3ConFotoMas.image = newImage;
             }
         }];
    }
}

-(void)infoNotaMas4{
    
    if ([[[self.arrayDatosNotasMas valueForKey:@"data"] objectAtIndex:3]isEqualToString:IMG_CELDA_DEFAULT])
    {
        self.viewNota4ConfotoMas.hidden = YES;
        self.viewNota4SinFotoMas.hidden = NO;
        
        //Titulo
        self.lbTituloNota4SinFotoMas.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasMas valueForKey:@"titulo"] objectAtIndex:3]];
    }
    else
    {
        self.viewNota4ConfotoMas.hidden = NO;
        self.viewNota4SinFotoMas.hidden = YES;
        
        //Titulo
        self.lbTituloNota4ConFotoMas.text = [NSString stringWithFormat:@"%@",[[self.arrayDatosNotasMas valueForKey:@"titulo"] objectAtIndex:3]];
        
        //Imagen
        NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:[[self.arrayDatosNotasMas objectAtIndex:3]objectForKey:@"data"]]];
        [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
         {
             if (!error)
             {
                 //Imagen
                 UIImage *imageNota = [UIImage imageWithData:data];
                 
                 self.oldWidth = imageNota.size.width;
                 
                 if (imageNota.size.height < 300 )
                     self.scaleFactor = 450 / self.oldWidth;
                 else
                     self.scaleFactor = 350 / self.oldWidth;
                 
                 float newHeight = imageNota.size.height * self.scaleFactor;
                 float newWidth = self.oldWidth * self.scaleFactor;
                 
                 UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
                 [imageNota drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
                 UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
                 UIGraphicsEndImageContext();
                 
                 self.imagenNota4ConFotoMas.image = newImage;
             }
         }];
    }
}

- (IBAction)mostrarDetalleNotasMas:(id)sender {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self.navigationbar1Landscape removeFromSuperview];
    [self.navigationbar1Portrait removeFromSuperview];
    
    UIButton *btnNota = (UIButton *)sender;
    
    self.infoNotaViewController = [[InfoNotaViewController alloc] initWithNibName:@"InfoNotaViewController" bundle:nil];
    //self.infoNotaViewController.delegateDetalle = self;
    
    self.infoNotaViewController.arrayDatos = [self.arrayDatosNotasMas objectAtIndex:btnNota.tag];
    self.infoNotaViewController.seccion = @"Mas";
    
    [self animacionPushNavigator];
    [self.navigationController pushViewController:self.infoNotaViewController animated:NO];
}

//**********************************************************************************************************************************************************************************************************************//
///////////////////////////////////////////////////////////////////////////////////////////// PUBLICIDAD /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//**********************************************************************************************************************************************************************************************************************//

#pragma mark - ********** PUBLICIDAD  **********

-(void)infoPublicidad{
    
    self.dictPub = self.publicidadDict;
    
    NSString *pathImagen = [NSString stringWithFormat:@"%@",[self.publicidadDict objectForKey:@"media"]];
    
    NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:pathImagen]];
    
    [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
     {
         if (!error)
             self.imagePublicidad1.image = [UIImage imageWithData:data];
     }];
}

- (IBAction)mostrarPublicidad:(id)sender {
    
    NSString *urlPub = [NSString stringWithFormat:@"%@",[self.dictPub objectForKey:@"clic"]];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlPub]];
}

//********************************************************************************************************************************************************************************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////// TABLE VIEW ////////////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* TABLE VIEW *******

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    //NOTAS PORTADA
    if (tableView.tag == kTableNotas)
        return [self.arrayDatosOtrasNotasPortada count];
    //FOCOS
    else if (tableView.tag == kTableFocos)
        return [self.arrayDatosFocos count];
    //GALERIAS
    else if (tableView.tag == kTableGalerias)
        return [self.arrayDatosGalerias count];
    else if (tableView.tag == kTableSigloTV)
        return [self.arrayDatosSigloTV count];
    //LO ULTIMO
    else if (tableView.tag == kTableLoUltimo)
        return [self.arrayDatosLoUltimo count];
    //ADEMAS VER
    else if (tableView.tag == kTableAdemasVer)
        return [self.arrayDatosAdemasVer count];
    //NOTAS COLOR
    else if (tableView.tag == kTableNotasColor)
        return [self.arrayDatosNotasColor count];
    //LO MAS
    else
        return [self.arrayDatosOtrasNotasMas count];
}

//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    [cell setBackgroundColor:[UIColor clearColor]];
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    //////////////////////////////////////////////////////////////////////////////////////////////TABLEVIEW NOTAS PORTADA//////////////////////////////////////////////////////////////////////////////////////////////
    if (tableView.tag == kTableNotas)
    {
        tagTableTouch = kTableNotas;
        
        NotasSeccionCustomCell *cellNotasPortada = [self.tableViewNotasPortada dequeueReusableCellWithIdentifier:CellIdentifier];
        
        if (cellNotasPortada == nil)
        {
            NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"NotasSeccionCustomCell" owner:nil options:nil];
            
            [cellNotasPortada setSelectionStyle:UITableViewCellSelectionStyleNone];
            
            for (UIView *view in views)
                if([view isKindOfClass:[UITableViewCell class]])
                    cellNotasPortada = (NotasSeccionCustomCell*)view;
        }
        
        cellNotasPortada.transform = CGAffineTransformRotate(CGAffineTransformIdentity, M_PI_2);
        cellNotasPortada.delegateTouchImagen = self;
        
        cellNotasPortada.btnMostrarDetalleInfo.tag = indexPath.row;
        cellNotasPortada.tituloSeccion = @"portada";
        cellNotasPortada.arrayDatos = [self.arrayDatosOtrasNotasPortada objectAtIndex:indexPath.row];
        
        //Imagen
        if (![[[self.arrayDatosOtrasNotasPortada valueForKey:@"data"]objectAtIndex:indexPath.row] isEqualToString:IMG_CELDA_DEFAULT])
            cellNotasPortada.activarSpinner = @"Si";
        
        return cellNotasPortada;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////TABLEVIEW FOCOS//////////////////////////////////////////////////////////////////////////////////////////////
    else if (tableView.tag == kTableFocos)
    {
        tagTableTouch = kTableFocos;
        
        FocosCustomCell *cellFocos = [self.tableViewFocos dequeueReusableCellWithIdentifier:CellIdentifier];
        
        if (cellFocos == nil)
        {
            NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"FocosCustomCell" owner:nil options:nil];
            
            [cellFocos setSelectionStyle:UITableViewCellSelectionStyleNone];
            
            for (UIView *view in views)
                if([view isKindOfClass:[UITableViewCell class]])
                    cellFocos = (FocosCustomCell*)view;
        }
        
        cellFocos.transform = CGAffineTransformRotate(CGAffineTransformIdentity, M_PI_2);
        
        cellFocos.arrayNotasFocos = [self.arrayDatosFocos objectAtIndex:indexPath.row];
        
        //Imagen
        if (![[[self.arrayDatosFocos objectAtIndex:indexPath.row] valueForKey:@"data"] isEqualToString:IMG_CELDA_DEFAULT])
            cellFocos.activarSpinner = @"Si";
        
        return cellFocos;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////TABLEVIEW LO ULTIMO///////////////////////////////////////////////////////////////////////////////////////////
    else if (tableView.tag == kTableLoUltimo)
    {
        tagTableTouch = kTableLoUltimo;
        
        LoUltimoCustomCell *cellLoUltimo = [self.tableViewLoUltimo dequeueReusableCellWithIdentifier:CellIdentifier];
        
        if (cellLoUltimo == nil)
        {
            NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"LoUltimoCustomCell" owner:nil options:nil];
            
            [cellLoUltimo setSelectionStyle:UITableViewCellSelectionStyleNone];
            
            for (UIView *view in views)
                if([view isKindOfClass:[UITableViewCell class]])
                    cellLoUltimo = (LoUltimoCustomCell*)view;
        }
        
        cellLoUltimo.intIndexRow = indexPath.row;
        
        cellLoUltimo.arrayDatosLoUltimo = [self.arrayDatosLoUltimo objectAtIndex:indexPath.row];
        
        return cellLoUltimo;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////TABLEVIEW NOTAS ADEMAS VER////////////////////////////////////////////////////////////////////////////////////
    if (tableView.tag == kTableAdemasVer)
    {
        tagTableTouch = kTableAdemasVer;
        
        NotasSeccionCustomCell *cellNotasAdemasVer = [self.tableViewAdemasVer dequeueReusableCellWithIdentifier:CellIdentifier];
        
        if (cellNotasAdemasVer == nil)
        {
            NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"NotasSeccionCustomCell" owner:nil options:nil];
            
            [cellNotasAdemasVer setSelectionStyle:UITableViewCellSelectionStyleNone];
            
            for (UIView *view in views)
                if([view isKindOfClass:[UITableViewCell class]])
                    cellNotasAdemasVer = (NotasSeccionCustomCell*)view;
        }
        
        cellNotasAdemasVer.transform = CGAffineTransformRotate(CGAffineTransformIdentity, M_PI_2);
        cellNotasAdemasVer.delegateTouchImagen = self;
        
        cellNotasAdemasVer.btnMostrarDetalleInfo.tag = indexPath.row;
        cellNotasAdemasVer.tituloSeccion = @"ademasver";
        cellNotasAdemasVer.arrayDatos = [self.arrayDatosAdemasVer objectAtIndex:indexPath.row];
        
        //Imagen
        if (![[[self.arrayDatosAdemasVer valueForKey:@"data"]objectAtIndex:indexPath.row] isEqualToString:IMG_CELDA_DEFAULT])
            cellNotasAdemasVer.activarSpinner = @"Si";
        
        return cellNotasAdemasVer;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////TABLEVIEW NOTAS COLOR/////////////////////////////////////////////////////////////////////////////////////////
    if (tableView.tag == kTableNotasColor)
    {
        tagTableTouch = kTableNotasColor;
        
        NotasColorCell *cellNotasAdemasVer = [self.tableViewNotasColores dequeueReusableCellWithIdentifier:CellIdentifier];
        
        if (cellNotasAdemasVer == nil)
        {
            NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"NotasColorCell" owner:nil options:nil];
            
            [cellNotasAdemasVer setSelectionStyle:UITableViewCellSelectionStyleNone];
            
            for (UIView *view in views)
                if([view isKindOfClass:[UITableViewCell class]])
                    cellNotasAdemasVer = (NotasColorCell*)view;
        }
        
        cellNotasAdemasVer.delegateTouchImagen = self;
        
        cellNotasAdemasVer.btnMostrarDetalleInfo.tag = indexPath.row;
        cellNotasAdemasVer.tituloSeccion = @"notascolor";
        cellNotasAdemasVer.arrayDatos = [self.arrayDatosNotasColor objectAtIndex:indexPath.row];
        
        //Imagen
        if (![[[self.arrayDatosNotasColor valueForKey:@"data"]objectAtIndex:indexPath.row] isEqualToString:IMG_CELDA_DEFAULT])
            cellNotasAdemasVer.activarSpinner = @"Si";
        
        return cellNotasAdemasVer;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////TABLEVIEW NOTAS LO MAS////////////////////////////////////////////////////////////////////////////////////////
    else if (tableView.tag == kTableLoMas)
    {
        tagTableTouch = kTableLoMas;
        
        NotasSeccionCustomCell *cellNotasLoMas= [self.tableViewNotasMas dequeueReusableCellWithIdentifier:CellIdentifier];
        
        if (cellNotasLoMas == nil)
        {
            NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"NotasSeccionCustomCell" owner:nil options:nil];
            
            [cellNotasLoMas setSelectionStyle:UITableViewCellSelectionStyleNone];
            
            for (UIView *view in views)
                if([view isKindOfClass:[UITableViewCell class]])
                    cellNotasLoMas = (NotasSeccionCustomCell*)view;
        }
        
        cellNotasLoMas.transform = CGAffineTransformRotate(CGAffineTransformIdentity, M_PI_2);
        cellNotasLoMas.delegateTouchImagen = self;
        
        cellNotasLoMas.btnMostrarDetalleInfo.tag = indexPath.row;
        cellNotasLoMas.tituloSeccion = @"mas";
        cellNotasLoMas.arrayDatos = [self.arrayDatosOtrasNotasMas objectAtIndex:indexPath.row];
        
        //Imagen
        if (![[[self.arrayDatosOtrasNotasMas valueForKey:@"data"]objectAtIndex:indexPath.row] isEqualToString:IMG_CELDA_DEFAULT])
            cellNotasLoMas.activarSpinner = @"Si";
        
        return cellNotasLoMas;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////TABLEVIEW GALERIAS////////////////////////////////////////////////////////////////////////////////////////////
    else if (tableView.tag == kTableGalerias)
    {
        tagTableTouch = kTableGalerias;
        
        NotasSeccionesCustomCell *cellGalerias = [self.tableViewGalerias dequeueReusableCellWithIdentifier:CellIdentifier];
        
        if (cellGalerias == nil)
        {
            NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"NotasSeccionesCustomCell" owner:nil options:nil];
            
            [cellGalerias setSelectionStyle:UITableViewCellSelectionStyleNone];
            
            for (UIView *view in views)
                if([view isKindOfClass:[UITableViewCell class]])
                    cellGalerias = (NotasSeccionesCustomCell*)view;
        }
        
        cellGalerias.transform = CGAffineTransformRotate(CGAffineTransformIdentity, M_PI_2);
        
        cellGalerias.arrayDatos = [self.arrayDatosGalerias objectAtIndex:indexPath.row];
        
        //Imagen
        
        if (![[[[self.arrayDatosGalerias valueForKey:@"thumb"] valueForKey:@"path"] objectAtIndex:indexPath.row] isEqualToString:IMG_CELDA_DEFAULT])
            cellGalerias.activarSpinner = @"Si";
        
        return cellGalerias;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////TABLEVIEW SIGLOTV/////////////////////////////////////////////////////////////////////////////////////////////
    else
    {
        tagTableTouch = kTableSigloTV;
        
        NotasSeccionesCustomCell *cellSigloTV = [self.tableViewGalerias dequeueReusableCellWithIdentifier:CellIdentifier];
        
        if (cellSigloTV == nil)
        {
            NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"NotasSeccionesCustomCell" owner:nil options:nil];
            
            [cellSigloTV setSelectionStyle:UITableViewCellSelectionStyleNone];
            
            for (UIView *view in views)
                if([view isKindOfClass:[UITableViewCell class]])
                    cellSigloTV = (NotasSeccionesCustomCell*)view;
        }
        
        cellSigloTV.transform = CGAffineTransformRotate(CGAffineTransformIdentity, M_PI_2);
        
        cellSigloTV.arrayDatos = [self.arrayDatosSigloTV objectAtIndex:indexPath.row];
        
        //Imagen
        
        if (![[[self.arrayDatosSigloTV valueForKey:@"data"] objectAtIndex:indexPath.row] isEqualToString:IMG_CELDA_DEFAULT])
            cellSigloTV.activarSpinner = @"Si";
        
        return cellSigloTV;
    }
}

#pragma mark - Mostrar detalle

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self.navigationbar1Landscape removeFromSuperview];
    [self.navigationbar1Portrait removeFromSuperview];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    self.infoNotaViewController = [[InfoNotaViewController alloc] initWithNibName:@"InfoNotaViewController" bundle:nil];
    //self.infoNotaViewController.delegateDetalle = self;
    
    if (tableView.tag == kTableSigloTV)
    {
        self.infoNotaViewController.arrayDatos = [self.arrayDatosSigloTV objectAtIndex:indexPath.row];
        self.infoNotaViewController.seccion = @"siglotv";
    }
    else if(tableView.tag == kTableGalerias)
    {
        self.infoNotaViewController.arrayDatos = [self.arrayDatosGalerias objectAtIndex:indexPath.row];
        self.infoNotaViewController.seccion = @"galerias";
    }
    else if(tableView.tag == kTableFocos)
    {
        self.infoNotaViewController.arrayDatos = [self.arrayDatosFocos objectAtIndex:indexPath.row];
        self.infoNotaViewController.seccion = @"focos";
    }
    else if(tableView.tag == kTableLoUltimo)
    {
        self.infoNotaViewController.arrayDatos = [self.arrayDatosLoUltimo objectAtIndex:indexPath.row];
        self.infoNotaViewController.seccion = @"ultimo";
    }
    
    [self animacionPushNavigator];
    [self.navigationController pushViewController:self.infoNotaViewController animated:NO];
}

-(void)mostrarInformacionDetalle:(id)sender :(NSString *)seccion{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self.navigationbar1Landscape removeFromSuperview];
    [self.navigationbar1Portrait removeFromSuperview];
    
    UIButton *btnNota = (UIButton *)sender;
    
    self.infoNotaViewController = [[InfoNotaViewController alloc] initWithNibName:@"InfoNotaViewController" bundle:nil];
    //self.infoNotaViewController.delegateDetalle = self;
    
    if ([seccion isEqualToString:@"portada"])
    {
        self.infoNotaViewController.arrayDatos = [self.arrayDatosOtrasNotasPortada objectAtIndex:btnNota.tag];
        self.infoNotaViewController.seccion = seccion;
    }
    else if ([seccion isEqualToString:@"ademasver"])
    {
        self.infoNotaViewController.arrayDatos = [self.arrayDatosAdemasVer objectAtIndex:btnNota.tag];
        self.infoNotaViewController.seccion = seccion;
    }
    else if ([seccion isEqualToString:@"notascolor"])
    {
        self.infoNotaViewController.arrayDatos = [self.arrayDatosNotasColor objectAtIndex:btnNota.tag];
        self.infoNotaViewController.seccion = seccion;
    }
    else if ([seccion isEqualToString:@"mas"])
    {
        self.infoNotaViewController.arrayDatos = [self.arrayDatosOtrasNotasMas objectAtIndex:btnNota.tag];
        self.infoNotaViewController.seccion = seccion;
    }
    
    [self animacionPushNavigator];
    [self.navigationController pushViewController:self.infoNotaViewController animated:NO];
}

-(void)crearMenuServicios{
    
    self.menuServicios = [MenuServicios customView];
    [self.menuServicios configurarVista];
    self.menuServicios.frame = CGRectMake(0, 0, self.menuServicios.frame.size.width, self.menuServicios.frame.size.height);
    //self.menuServicios.delegateMenuSecciones = self;
    [self.viewServicios addSubview:self.menuServicios];
}

//********************************************************************************************************************************************************************************************************************//
/////////////////////////////////////////////////////////////////////////////////////////////// MB PROGRESS HUD ////////////////////////////////////////////////////////////////////////////////////////////////////////
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
    
    [self ocultarSplash];
    
    //Navigationbar
    self.navigationController.navigationBarHidden = NO;
    
	HUD = nil;
}

//********************************************************************************************************************************************************************************************************************//
///////////////////////////////////////////////////////////////////////////////////////////// DATOS DEL SERVIDOR ///////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************************************************************************************************************************************************************************************//

#pragma mark - ******* DATOS DEL SERVISOR *******

////////////////////////////////////////////////////////////////////////////////////////////////// CLIMA  //////////////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Obtiene Clima

-(void)obtenerClima{
    
    self.obtieneClima = 1;
    
    [self requestServer:@"/"];
}

///////////////////////////////////////////////////////////////////////////////////////////// OBTENER SECCIONES  ///////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Secciones

-(void)obtenerDatosServidor{
    
    [CommManager sharedInstance].seccionesDelegate = self;
    [[CommManager sharedInstance] descargaSecciones];
    
    [self obtieneNotasSeccion];
}

-(void)obtieneNotasDeSeccion:(int)opcion {
    
    [[CommManager sharedInstance] opcionSeccion:opcion];
    [[CommManager sharedInstance] descargaArticulosDeSeccion];
}

-(void)recargaSecciones:(NSDictionary *)seccionesInfo {
    
    NSSortDescriptor *sortDescriptor;
    sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"orden" ascending:YES];
    
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    NSArray *tempArray;
    
    tempArray = [seccionesInfo allValues];
    self.arraySecciones = [tempArray sortedArrayUsingDescriptors:sortDescriptors];
    
    [self crearMenuSecciones];
    
    //Servicios
    [self crearMenuServicios];
}

/////////////////////////////////////////////////////////////////////////////////////// OBTENER NOTAS DE LAS SECCIONES  ///////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Obtener notas de las secciones

-(void)obtieneNotasSeccion{
    
    [CommManager sharedInstance].notasDelegate = self;
    [self obtieneNotasDeSeccion:kPortada];
}

-(void)recargaArticulosDeSeccion:(NSDictionary *)seccionesInfo {
    
    self.arrayDatosPortada = [[NSMutableArray alloc] init];
    self.arrayDatosPrimeraNotaPortada = [[NSMutableArray alloc] init];
    self.arrayDatosNotasPortada = [[NSMutableArray alloc] init];
    self.arrayDatosOtrasNotasPortada = [[NSMutableArray alloc] init];
    
    [self notasSecciones:seccionesInfo];
    
    self.arrayDatosPortada = self.arrayDatos;
    
    for (int i = 0; i < [self.arrayDatosPortada count]; i++)
    {
        if (i == 0)
            [self.arrayDatosPrimeraNotaPortada addObject:[self.arrayDatosPortada objectAtIndex:i]];
        else if (i == 1 || i == 2 || i == 3 || i == 4)
            [self.arrayDatosNotasPortada addObject:[self.arrayDatosPortada objectAtIndex:i]];
        else
            [self.arrayDatosOtrasNotasPortada addObject:[self.arrayDatosPortada objectAtIndex:i]];
    }
    
    [self notaPortadaPrincipal];
    [self notasDePortada];
    [self.tableViewNotasPortada reloadData];
    
    if (self.contadorEntroCambiarSeccion != 1)
        [self obtieneFocos];
    else
    {
        self.contadorEntroCambiarSeccion = 0;
        self.contadorViewSecciones = 0;
        self.menuSecciones.alpha = 0.0;
    }
    
    [self.spinner stopAnimating];
    self.spinner.hidden = YES;
    self.imagenFondoSpinner.hidden = YES;
}

//////////////////////////////////////////////////////////////////////////////////////////// OBTENER NOTAS DE LOS FOCOS ///////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Obtener focos

-(void)obtieneFocos{
    
    [[CommManager sharedInstance] opcionSeccion:kFocos];
    [[CommManager sharedInstance] descargaArticulosDeSeccion];
}

-(void)recargaFocos:(NSDictionary *)seccionesInfo {
    
    self.arrayDatosFocos = [[NSMutableArray alloc] init];
    
    [self notasSecciones:seccionesInfo];
    
    self.arrayDatosFocos = self.arrayDatos;
    
    [self.tableViewFocos reloadData];
    
    [self escondeHUD];
    
    [self obtenerGaleria];
}

/////////////////////////////////////////////////////////////////////////////////////////// OBTIENE GALERIAS /////////////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Obtener Galerias

-(void)obtenerGaleria{
    
    [self requestServer:@"/"];
}

/////////////////////////////////////////////////////////////////////////////////////////// OBTIENE SIGLO TV ////////////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Obtener sigloTV

-(void)obtieneSigloTV{
    
    [[CommManager sharedInstance] opcionSeccion:kSigloTV];
    [[CommManager sharedInstance] descargaArticulosDeSeccion];
}

-(void)recargaSigloTV:(NSDictionary *)seccionesInfo{
    
    self.arrayDatosSigloTV = [[NSMutableArray alloc] init];
    
    [self notasSecciones:seccionesInfo];
    
    self.arrayDatosSigloTV = self.arrayDatos;
    
    [self.tableViewSigloTV reloadData];
    
    [self obtieneLoMas];
}

////////////////////////////////////////////////////////////////////////////////////////// OBTENER NOTAS DE LO MAS  ///////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Obtener lo mas

-(void)obtieneLoMas{
    
    [[CommManager sharedInstance] opcionSeccion:self.seccionidLoMas];
    [[CommManager sharedInstance] descargaArticulosDeSeccion];
}

-(void)recargaLoMas:(NSDictionary *)seccionesInfo{
    
    [self notasSecciones:seccionesInfo];
    
    if (self.seccionidLoMas == kUltimo)
    {
        self.arrayDatosLoUltimo = [[NSMutableArray alloc] init];
        self.arrayDatosLoUltimo = self.arrayDatos;
        
        [self.tableViewLoUltimo reloadData];
        
        self.imagenFondoSpinner1.hidden = YES;
        self.spinner1.hidden = YES;
        [self.spinner1 stopAnimating];
        
        self.seccionidLoMas = kAdemasVer;
        [self obtieneLoMas];
    }
    else if (self.seccionidLoMas == kAdemasVer)
    {
        self.arrayDatosAdemasVer = [[NSMutableArray alloc] init];
        self.arrayDatosAdemasVer = self.arrayDatos;
        
        [self.tableViewAdemasVer reloadData];
        
        self.imagenFondoSpinner4.hidden = YES;
        self.spinner4.hidden = YES;
        [self.spinner4 stopAnimating];
        
        self.seccionidLoMas = kLeido;
        [self obtieneLoMas];
    }
    else if (self.seccionidLoMas == kLeido || self.seccionidLoMas == kComentado)
    {
        self.seccionLoMas = self.seccionidLoMas;
        
        self.arrayDatosLoMas = [[NSMutableArray alloc] init];
        self.arrayDatosNotasMas = [[NSMutableArray alloc] init];
        self.arrayDatosOtrasNotasMas = [[NSMutableArray alloc] init];
        self.arrayDatosLoMas = self.arrayDatos;
        
        for (int i = 0; i < [self.arrayDatosLoMas count]; i++)
        {
            if (i == 0 || i == 1 || i == 2 || i == 3)
                [self.arrayDatosNotasMas addObject:[self.arrayDatosLoMas objectAtIndex:i]];
            else
                [self.arrayDatosOtrasNotasMas addObject:[self.arrayDatosLoMas objectAtIndex:i]];
        }
        
        [self notasMasLeidasComentadas];
        [self.tableViewNotasMas reloadData];
        
        self.imagenFondoSpinner2.hidden = YES;
        self.spinner2.hidden = YES;
        [self.spinner2 stopAnimating];
        
        [self obtienerPublicidad];
    }
    else if (self.seccionidLoMas == kNotasColor)
    {
        self.arrayDatosNotasColor = [[NSMutableArray alloc] init];
        self.arrayDatosNotasColor = self.arrayDatos;
        
        [self.tableViewNotasColores reloadData];
        
        self.imagenFondoSpinner5.hidden = YES;
        self.spinner5.hidden = YES;
        [self.spinner5 stopAnimating];
    }
}

/////////////////////////////////////////////////////////////////////////////////////////// OBTIENE PUBLICIDAD ///////////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Obtener Publicidad

-(void)obtienerPublicidad{
    
    self.obtienePublicidad = 1;
    
    [self requestServer:@"/"];
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////// REQUEST SERVER /////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Notas Secciones Info

-(void)notasSecciones:(NSDictionary *)seccionesInfo{
    
    self.arrayDatos = [[NSMutableArray alloc] init];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    NSMutableArray *tempArrayDatos = [[NSMutableArray alloc] init];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"orden" ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    
    NSDictionary *notasDict = [seccionesInfo objectForKey:@"nota"];
    NSArray *tempArray = [notasDict allValues];
    
    for (int i = 0; i < [notasDict count]; i++)
    {
        NSString *tmpst = [NSString stringWithFormat:@"%i",i];
        NSString *Titulo =[[tempArray objectAtIndex:i]objectForKey:@"titulo"];
        NSString *Texto =[[tempArray objectAtIndex:i]objectForKey:@"texto"];
        NSString *idnota =[[tempArray objectAtIndex:i]objectForKey:@"idnota"];
        NSString *orden =[[tempArray objectAtIndex:i]objectForKey:@"orden"];
        NSString *fecha =[[tempArray objectAtIndex:i]objectForKey:@"fecha"];
        NSString *idurl =[[tempArray objectAtIndex:i]objectForKey:@"idurl"];
        NSString *autor = [[tempArray objectAtIndex:i]objectForKey:@"autor"];
        NSString *video = [[tempArray objectAtIndex:i]objectForKey:@"video"];
        NSString *seccion = [[tempArray objectAtIndex:i]objectForKey:@"section"];
        NSString *comments = [[tempArray objectAtIndex:i]objectForKey:@"comments"];
        NSString *visitas = [[tempArray objectAtIndex:i]objectForKey:@"visitas"];
        NSString *cabeza = [[tempArray objectAtIndex:i]objectForKey:@"cabeza"];
        NSString *color = [[tempArray objectAtIndex:i]objectForKey:@"color"];
        NSString *fondo = [[tempArray objectAtIndex:i]objectForKey:@"fondo"];
        NSString *imagen = [[[tempArray objectAtIndex:i]objectForKey:@"thumb"]objectForKey:@"path"];
        
        if (Titulo != NULL)
            [dict setObject:Titulo forKey:@"titulo"];
        else
            [dict setObject:@"" forKey:@"titulo"];
        
        if (Texto != NULL)
            [dict setObject:Texto forKey:@"texto"];
        else
            [dict setObject:@"" forKey:@"texto"];
        
        if (tmpst != NULL)
            [dict setObject:tmpst forKey:@"id"];
        else
            [dict setObject:@"" forKey:@"id"];
        
        if (idnota != NULL)
            [dict setObject:idnota forKey:@"idnota"];
        else
            [dict setObject:@"" forKey:@"idnota"];
        
        if (orden != NULL)
            [dict setObject:orden forKey:@"orden"];
        else
            [dict setObject:@"" forKey:@"orden"];
        
        if (fecha != NULL)
            [dict setObject:fecha forKey:@"fecha"];
        else
            [dict setObject:@"" forKey:@"fecha"];
        
        if (idurl != NULL)
            [dict setObject:idurl forKey:@"idurl"];
        else
            [dict setObject:@"" forKey:@"idurl"];
        
        if (autor != NULL)
            [dict setObject:autor forKey:@"autor"];
        else
            [dict setObject:@"" forKey:@"autor"];
        
        if (seccion != NULL)
            [dict setObject:seccion forKey:@"section"];
        else
            [dict setObject:@"" forKey:@"section"];
        
        if (video != NULL)
            [dict setObject:video forKey:@"video"];
        else
            [dict setObject:@"" forKey:@"video"];
        
        if (comments != NULL)
            [dict setObject:comments forKey:@"comments"];
        else
            [dict setObject:@"" forKey:@"comments"];
        
        if (visitas != NULL)
            [dict setObject:visitas forKey:@"visitas"];
        else
            [dict setObject:@"" forKey:@"visitas"];
        
        if (cabeza != NULL)
            [dict setObject:cabeza forKey:@"cabeza"];
        else
            [dict setObject:Titulo forKey:@"cabeza"];
        
        if (color != NULL)
            [dict setObject:color forKey:@"color"];
        else
            [dict setObject:@"" forKey:@"color"];
        
        if (fondo != NULL)
            [dict setObject:fondo forKey:@"fondo"];
        else
            [dict setObject:@"" forKey:@"fondo"];
        
        if (imagen != NULL)
            [dict setObject:imagen forKey:@"data"];
        else
            [dict setObject:IMG_CELDA_DEFAULT forKey:@"data"];
        
        [tempArrayDatos addObject:[dict copy]];
    }
    
    self.arrayDatos = (NSMutableArray *)[tempArrayDatos sortedArrayUsingDescriptors:sortDescriptors];
}

#pragma mark - Request server

- (void) requestServer:(NSString *)peticion {
    
    if (self.obtienePublicidad == 1)
    {
        NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:API_KEY_VALOR, API_KEY, @"getpub", API_METODO, @"67",API_SID,nil];
        [[RKClient sharedClient] post:peticion params:params delegate:self];
    }
    else if (self.obtieneClima == 1)
    {
        NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:API_KEY_VALOR, API_KEY, @"clima", API_METODO, @"actual", API_ACTUAL,nil];
        [[RKClient sharedClient] post:peticion params:params delegate:self];
    }
    else
    {
        if([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] && ([UIScreen mainScreen].scale == 2.0))
            sizeImagenes = @"700";
        else
            sizeImagenes = @"300";

        NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:API_KEY_VALOR, API_KEY, @"galerias", API_METODO, sizeImagenes,API_ANCHO, nil];
        [[RKClient sharedClient] post:peticion params:params delegate:self];
    }
}

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response {
    
    SBJsonParser *parser = [[SBJsonParser alloc]init];
    NSMutableDictionary *respuesta = [parser objectWithString:[response bodyAsString]];
    
    if (self.obtienePublicidad == 1)
    {
        self.publicidadDict = [respuesta objectForKey:@"banner"];
        
        self.obtienePublicidad = 0;
        
        [self infoPublicidad];
        
        self.imagenFondoSpinner3.hidden = YES;
        self.spinner3.hidden = YES;
        [self.spinner3 stopAnimating];
        
        self.seccionidLoMas = kNotasColor;
        [self obtieneLoMas];
    }
    else if (self.obtieneClima == 1)
    {
        self.climaDict = respuesta ;
        self.obtieneClima = 0;
        
        [self temperaturaActual];
        
        [self obtenerDatosServidor];
    }
    else
    {
        self.galeriasDict = [respuesta objectForKey:@"galerias"];
        
        NSArray *tempArray = [self.galeriasDict allValues];
        NSMutableArray *arraySort = [[NSMutableArray alloc] initWithArray:tempArray];
        NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"fecha" ascending:NO];
        NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
        
        tempArray = [arraySort sortedArrayUsingDescriptors:sortDescriptors];
        
        self.arrayDatosGalerias = tempArray;
        
        for(NSMutableDictionary *galeriaDetail in self.arrayDatosGalerias)
        {
            NSString *path  = [[galeriaDetail objectForKey:@"thumb"]objectForKey:@"path"];
            
            if (path != NULL)
                [galeriaDetail setObject:path forKey:@"data"];
        }
        
        if ([self.arrayDatosGalerias count] > 0)
        {
            [self.tableViewGalerias reloadData];
            
            [self obtieneSigloTV];
        }
    }
}

@end
