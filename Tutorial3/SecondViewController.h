//
//  SecondViewController.h
//  Tutorial3
//
//  Created by PamLiiz on 04/03/13.
//  Copyright (c) 2013 PamLiiz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (retain, nonatomic) NSString *urlWeb;

@property (retain, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)Aceptar:(id)sender;
@end
