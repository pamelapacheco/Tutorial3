//
//  Menu2Landscape.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 05/02/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import "Menu2Landscape.h"

@implementation Menu2Landscape

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) { }
    return self;
}

+ (id)customView{
    
    Menu2Landscape *menu2Landscape = [[[NSBundle mainBundle] loadNibNamed:@"Menu2Landscape" owner:nil options:nil] lastObject];
    
    if ([menu2Landscape isKindOfClass:[Menu2Landscape class]])
        return menu2Landscape;
    else
        return nil;
}

#pragma mark - Configurar toolbar

-(void)configurarToolBar{
    
    CGRect toolbarFondoFrame = self.toolbarFondo.frame;
    toolbarFondoFrame.size.height = 704;
    self.toolbarFondo.frame = toolbarFondoFrame;
}

@end
