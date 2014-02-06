//
//  Menu1Portrait.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 05/02/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Menu1Portrait : UIView

@property (strong, nonatomic) IBOutlet UIToolbar *toolbarFondo;

+ (id)customView;
-(void)configurarToolBar;

@end
