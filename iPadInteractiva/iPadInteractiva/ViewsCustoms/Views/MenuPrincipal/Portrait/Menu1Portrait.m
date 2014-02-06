//
//  Menu1Portrait.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 05/02/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import "Menu1Portrait.h"

@implementation Menu1Portrait

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) { }
    return self;
}

+ (id)customView{
    
    Menu1Portrait *menu1Portrait = [[[NSBundle mainBundle] loadNibNamed:@"Menu1Portrait" owner:nil options:nil] lastObject];
    
    if ([menu1Portrait isKindOfClass:[Menu1Portrait class]])
        return menu1Portrait;
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
