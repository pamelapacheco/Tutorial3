//
//  Menu3Landscape.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 05/02/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import "Menu3Landscape.h"

@implementation Menu3Landscape

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {}
    return self;
}

+ (id)customView{
    
    Menu3Landscape *menu3Landscape = [[[NSBundle mainBundle] loadNibNamed:@"Menu3Landscape" owner:nil options:nil] lastObject];
    
    if ([menu3Landscape isKindOfClass:[Menu3Landscape class]])
        return menu3Landscape;
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
