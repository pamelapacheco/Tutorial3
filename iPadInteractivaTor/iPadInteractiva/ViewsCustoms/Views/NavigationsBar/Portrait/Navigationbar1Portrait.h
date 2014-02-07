//
//  Navigationbar1Portrait.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 25/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Navigationbar1PortraitDelegate;

@interface Navigationbar1Portrait : UIView

+ (id)customView;

//Delegado
@property (strong, nonatomic) id <Navigationbar1PortraitDelegate> delegateNavigationbar1Portrait;

//Datos
@property (nonatomic,retain) UIImageView *imagefondo;
@property (nonatomic,retain) UITextView *titulo;

@property (strong, nonatomic) IBOutlet UILabel *lbFecha;
@property (strong, nonatomic) IBOutlet UIImageView *imagenClima;
- (IBAction)buscarNotas:(id)sender;

- (IBAction)abrirAppPublish:(id)sender;

@end

@protocol Navigationbar1PortraitDelegate <NSObject>

- (void)abrirAppPublish;
- (void)buscarNota;

@end
