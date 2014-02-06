//
//  NavigationBar2Portrait.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 28/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import "NavigationBar2Portrait.h"

@implementation NavigationBar2Portrait

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {  }
    return self;
}

+ (id)customView
{
    NavigationBar2Portrait *navigationBar2Portrait = [[[NSBundle mainBundle] loadNibNamed:@"NavigationBar2Portrait" owner:nil options:nil] lastObject];
    
    if ([navigationBar2Portrait isKindOfClass:[NavigationBar2Portrait class]])
        return navigationBar2Portrait;
    else
        return nil;
}

#pragma mark - Accion del boton regresar

- (IBAction)regresar:(id)sender {
   
    [self.delegateNavigationBar2Portrait regresar];
}

@end
