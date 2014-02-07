//
//  NavigationBar2Landscape.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 28/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import "NavigationBar2Landscape.h"

@implementation NavigationBar2Landscape

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) { }
    return self;
}

+ (id)customView
{
    NavigationBar2Landscape *navigationBar2Landscape = [[[NSBundle mainBundle] loadNibNamed:@"NavigationBar2Landscape" owner:nil options:nil] lastObject];
    
    if ([navigationBar2Landscape isKindOfClass:[NavigationBar2Landscape class]])
        return navigationBar2Landscape;
    else
        return nil;
}

#pragma mark - Accion del boton regresar

- (IBAction)regresar:(id)sender {
    
    [self.delegateNavigationBar2Landscape regresar];
}

@end