//
//  NavigationBar2Portrait.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 28/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NavigationBar2PortraitDelegate;

@interface NavigationBar2Portrait : UIView

+ (id)customView;

//Delegado
@property (strong, nonatomic) id <NavigationBar2PortraitDelegate> delegateNavigationBar2Portrait;

//Datos
@property (nonatomic,retain) UIImageView *imagefondo;
@property (nonatomic,retain) UITextView *titulo;


- (IBAction)regresar:(id)sender;


@end

@protocol NavigationBar2PortraitDelegate <NSObject>

- (void)regresar;

@end

