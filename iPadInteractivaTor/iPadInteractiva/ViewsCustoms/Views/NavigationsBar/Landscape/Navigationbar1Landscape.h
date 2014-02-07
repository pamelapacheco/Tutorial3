//
//  Navigationbar1Landscape.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 25/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Navigationbar1LandscapeDelegate;

@interface Navigationbar1Landscape : UIView

+ (id)customView;

//Delegado
@property (strong, nonatomic) id <Navigationbar1LandscapeDelegate> delegateNavigationbar1Landscape;

//Datos
@property (nonatomic,retain) UIImageView *imagefondo;
@property (nonatomic,retain) UITextView *titulo;

@property (strong, nonatomic) IBOutlet UILabel *lbFecha;
@property (strong, nonatomic) IBOutlet UIImageView *imagenClima;
- (IBAction)buscarNotas:(id)sender;

- (IBAction)abrirAppPublish:(id)sender;

@end

@protocol Navigationbar1LandscapeDelegate <NSObject>

- (void)abrirAppPublish;
- (void)buscarNota;

@end