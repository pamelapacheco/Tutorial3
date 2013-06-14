//
//  WebViewController.h
//  Tutorial3
//
//  Created by PamLiiz on 04/03/13.
//  Copyright (c) 2013 PamLiiz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (retain, nonatomic) IBOutlet UIButton *btnGoogle;
@property (retain, nonatomic) IBOutlet UIButton *btnTecLaguna;
@property (retain, nonatomic) IBOutlet UIButton *btnFacebook;
@property (retain, nonatomic) IBOutlet UIButton *btnYoutube;

- (IBAction)mostrarGoogle:(id)sender;
- (IBAction)mostrarTecLaguna:(id)sender;
- (IBAction)mostrarFacebook:(id)sender;
- (IBAction)mostrarYoutube:(id)sender;
@end
