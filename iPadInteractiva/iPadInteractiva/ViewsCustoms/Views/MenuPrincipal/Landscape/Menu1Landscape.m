//
//  Menu1Landscape.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 05/02/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import "Menu1Landscape.h"

@implementation Menu1Landscape

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {  }
    return self;
}

+ (id)customView{
    
    Menu1Landscape *menu1Landscape = [[[NSBundle mainBundle] loadNibNamed:@"Menu1Landscape" owner:nil options:nil] lastObject];
    
    if ([menu1Landscape isKindOfClass:[Menu1Landscape class]])
        return menu1Landscape;
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
