//
//  InfoNotaViewController.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 28/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

//NavigationBar
#import "NavigationBar2Portrait.h"
#import "NavigationBar2Landscape.h"

@interface InfoNotaViewController : UIViewController<NavigationBar2LandscapeDelegate,NavigationBar2PortraitDelegate>

///////////////////////////////////////////////////////////////////////////////////////////////// ORIENTACION //////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (nonatomic) int orientacionView;
@property (nonatomic) UIDeviceOrientation orientation;
@property (nonatomic) UIInterfaceOrientation statusBarOrientation;

/////////////////////////////////////////////////////////////////////////////////////////////// NAVIGATIONBAR //////////////////////////////////////////////////////////////////////////////////////////////////////////

@property (strong, nonatomic) UIImage *imagenNavBar;
@property (strong, nonatomic) NavigationBar2Landscape *navigationBar2Landscape;
@property (strong, nonatomic) NavigationBar2Portrait *navigationBar2Portrait;

/////////////////////////////////////////////////////////////////////////////////////////// INFORMACION DE LA NOTA /////////////////////////////////////////////////////////////////////////////////////////////////////

@property (nonatomic, retain) NSString *seccion;
@property (nonatomic, retain) NSArray *arrayDatos;

@end
