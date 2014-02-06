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
        
//        self.scrollViewPrincipal.contentSize = CGSizeMake(0, 3100);
//        
//        [self.viewParte2 setFrame:CGRectMake(0, 710, self.viewParte2.frame.size.width, self.viewParte2.frame.size.height)];
//        [self.viewParte3 setFrame:CGRectMake(0, 1420, self.viewParte3.frame.size.width, self.viewParte3.frame.size.height)];
    }
    else if(self.orientacionView == UIInterfaceOrientationLandscapeLeft || self.orientacionView == UIInterfaceOrientationLandscapeRight)
    {
        [self.navigationBar2Landscape removeFromSuperview];
        [self.navigationBar2Portrait removeFromSuperview];
        
        [self.navigationController.navigationBar addSubview:[self configurarNavigationBarLandscape]];
        
//        self.scrollViewPrincipal.contentSize = CGSizeMake(2570, 0);
//        
//        [self.viewParte2 setFrame:CGRectMake(760, 0, self.viewParte2.frame.size.width, self.viewParte2.frame.size.height)];
//        [self.viewParte3 setFrame:CGRectMake(1528, 0, self.viewParte3.frame.size.width, self.viewParte3.frame.size.height)];
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

@end
