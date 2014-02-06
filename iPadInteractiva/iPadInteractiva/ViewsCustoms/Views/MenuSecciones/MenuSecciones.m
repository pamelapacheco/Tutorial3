//
//  MenuSecciones.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 31/10/13.
//  Copyright (c) 2013 Programador Aplicaciones Moviles. All rights reserved.
//

#import "MenuSecciones.h"

@implementation MenuSecciones

- (id)initWithFrame:(CGRect)frame{
    
    if (self) { }
    return self;
}

+ (id)customView{
    
    MenuSecciones *menuSecciones = [[[NSBundle mainBundle] loadNibNamed:@"MenuSecciones" owner:nil options:nil] lastObject];
    
    if ([menuSecciones isKindOfClass:[MenuSecciones class]])
        return menuSecciones;
    else
        return nil;
}

#pragma mark - Configurar toolbar

-(void)configurarToolBarSecciones{
    
    CGRect viewFrameSecciones = self.toolBarFondoSecciones.frame;
    viewFrameSecciones.size.height = 624;
    self.toolBarFondoSecciones.frame = viewFrameSecciones;
    
    //Cambiar font de textos
    [self cambiarFontText];
}

#pragma mark - Cambiar Font

-(void)cambiarFontText{
    
    self.lbNoticias.font = [UIFont fontWithName:FONT_Bold size:27.0f];
    self.btnPortada.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnTorreon.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnPoliciaca.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnNacional.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnInternacional.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnFinanzas.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnEditorial.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnRegionales.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnGP.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnSaltillo.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnDurango.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnLaLaguna.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    
    self.lbEntretenimiento.font = [UIFont fontWithName:FONT_Bold size:27.0f];
    self.btnDeportes.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnEspectaculos.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnNosotros.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnCultura.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnSantos.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnCartelera.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];

    self.lbAdemasLee.font = [UIFont fontWithName:FONT_Bold size:27.0f];
    self.btnCiencia.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnTecnologia.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnSucesos.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnSalud.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnSN.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
    self.btnDC.titleLabel.font = [UIFont fontWithName:FONT_Regular size:18.0f];
}

#pragma mark - Info de la nota

- (IBAction)mostrarDetalleSecciones:(id)sender {
    
    [self.delegateMenuSecciones mostrarNotasSecciones:sender];
}

@end
