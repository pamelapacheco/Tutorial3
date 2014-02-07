//
//  Navigationbar1Landscape.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 25/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import "Navigationbar1Landscape.h"

@implementation Navigationbar1Landscape

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) { }
    return self;
}

+ (id)customView
{
    Navigationbar1Landscape *navigationbar1Landscape = [[[NSBundle mainBundle] loadNibNamed:@"Navigationbar1Landscape" owner:nil options:nil] lastObject];
    
    if ([navigationbar1Landscape isKindOfClass:[Navigationbar1Landscape class]])
        return navigationbar1Landscape;
    else
        return nil;
}

#pragma mark - Accion del boton recargar

- (IBAction)abrirAppPublish:(id)sender {
    
    [self.delegateNavigationbar1Landscape abrirAppPublish];
}

#pragma mark - Accion del boton buscador

- (IBAction)buscarNotas:(id)sender {
    
     [self.delegateNavigationbar1Landscape buscarNota];
}

@end
