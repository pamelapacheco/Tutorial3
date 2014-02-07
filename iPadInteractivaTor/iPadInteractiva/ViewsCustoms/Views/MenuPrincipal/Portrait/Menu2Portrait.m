//
//  Menu2Portrait.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 05/02/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import "Menu2Portrait.h"

@implementation Menu2Portrait

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) { }
    return self;
}

+ (id)customView{
    
    Menu2Portrait *menu2Portrait = [[[NSBundle mainBundle] loadNibNamed:@"Menu2Portrait" owner:nil options:nil] lastObject];
    
    if ([menu2Portrait isKindOfClass:[Menu2Portrait class]])
        return menu2Portrait;
    else
        return nil;
}

#pragma mark - Configurar toolbar

-(void)configurarToolBar{
    
    CGRect toolbarFondoFrame = self.toolbarFondo.frame;
    toolbarFondoFrame.size.height = 960;
    self.toolbarFondo.frame = toolbarFondoFrame;
}

@end
