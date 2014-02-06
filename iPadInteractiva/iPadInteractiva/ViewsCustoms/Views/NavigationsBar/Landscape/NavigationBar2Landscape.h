//
//  NavigationBar2Landscape.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 28/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NavigationBar2LandscapeDelegate;

@interface NavigationBar2Landscape : UIView

+ (id)customView;

//Delegado
@property (strong, nonatomic) id <NavigationBar2LandscapeDelegate> delegateNavigationBar2Landscape;

//Datos
@property (nonatomic,retain) UIImageView *imagefondo;
@property (nonatomic,retain) UITextView *titulo;


- (IBAction)regresar:(id)sender;


@end

@protocol NavigationBar2LandscapeDelegate <NSObject>

- (void)regresar;

@end

