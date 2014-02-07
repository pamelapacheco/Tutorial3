//
//  Navigationbar1Portrait.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 25/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import "Navigationbar1Portrait.h"

@implementation Navigationbar1Portrait

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {  }
    return self;
}

+ (id)customView
{
    Navigationbar1Portrait *navigationbar1Portrait = [[[NSBundle mainBundle] loadNibNamed:@"Navigationbar1Portrait" owner:nil options:nil] lastObject];
    
    if ([navigationbar1Portrait isKindOfClass:[Navigationbar1Portrait class]])
        return navigationbar1Portrait;
    else
        return nil;
}

#pragma mark - Accion del boton recargar

- (IBAction)abrirAppPublish:(id)sender {
    
    [self.delegateNavigationbar1Portrait abrirAppPublish];
}

#pragma mark - Accion del boton buscador

- (IBAction)buscarNotas:(id)sender {
    
    [self.delegateNavigationbar1Portrait buscarNota];
}

@end
