//
//  Menu2Landscape.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 05/02/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Menu2Landscape : UIView

@property (strong, nonatomic) IBOutlet UIToolbar *toolbarFondo;

+ (id)customView;
-(void)configurarToolBar;

@end
