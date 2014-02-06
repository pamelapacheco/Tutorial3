//
//  MenuServicios.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 04/02/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import "MenuServicios.h"

@implementation MenuServicios

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) { }
    return self;
}

+ (id)customView
{
    MenuServicios *menuServicios = [[[NSBundle mainBundle] loadNibNamed:@"MenuServicios" owner:nil options:nil] lastObject];
    
    if ([menuServicios isKindOfClass:[MenuServicios class]])
        return menuServicios;
    else
        return nil;
}

-(void)configurarVista{
    
    self.scrollViewPrincipal.contentSize = CGSizeMake(0, 665);
    
    self.viewTitulo.backgroundColor = COLOR_AZUL;
    
    //Cambiar font de textos
    [self cambiarFontText];
}

#pragma mark - Cambiar Font

-(void)cambiarFontText{
    
    self.lbServicios.font = [UIFont fontWithName:FONT_Bold size:24.0f];
    
    self.lbEventos.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.lbDivisas.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.lbCine.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.lbHoroscopos.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.lbObituarios.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.lbVuelos.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.lbIglesias.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.lbEmergencias.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.lbLaguna.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.lbTienda.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.lbMuseos.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.lbClima.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.lbDirectorio.font = [UIFont fontWithName:FONT_Regular size:18.0f];
}

@end
