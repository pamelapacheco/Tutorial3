//
//  FirstViewController.h
//  Tutorial3
//
//  Created by PamLiiz on 04/03/13.
//  Copyright (c) 2013 PamLiiz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UIAlertViewDelegate>

@property (retain, nonatomic) IBOutlet UIView *vistaUno;
@property (retain, nonatomic) IBOutlet UIView *vistaDos;
@property (retain, nonatomic) IBOutlet UIView *vistaTres;

- (IBAction)unaImagen:(id)sender;
- (IBAction)dosImagenes:(id)sender;
- (IBAction)tresImagenes:(id)sender;

- (IBAction)guardarImagen:(id)sender;

@end
