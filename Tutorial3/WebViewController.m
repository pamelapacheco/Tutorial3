//
//  WebViewController.m
//  Tutorial3
//
//  Created by PamLiiz on 04/03/13.
//  Copyright (c) 2013 PamLiiz. All rights reserved.
//

#import "WebViewController.h"
#import "SecondViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Pagina Web", @"Pagina Web");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrarGoogle:(id)sender {
    
    SecondViewController *secondView = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    secondView.urlWeb = @"https://www.google.com.mx/";
    [self presentViewController:secondView animated:YES completion:nil];
}

- (IBAction)mostrarTecLaguna:(id)sender {
    
    SecondViewController *secondView = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    secondView.urlWeb = @"http://laguna.snit.mx/index.htm";
    [self presentViewController:secondView animated:YES completion:nil];}

- (IBAction)mostrarFacebook:(id)sender {
    
    SecondViewController *secondView = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    secondView.urlWeb = @"https://www.facebook.com/";
    [self presentViewController:secondView animated:YES completion:nil];
}

- (IBAction)mostrarYoutube:(id)sender {
    
    SecondViewController *secondView = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    secondView.urlWeb = @"http://www.youtube.com/";
    [self presentViewController:secondView animated:YES completion:nil];
    
}
- (void)dealloc {
    [_btnGoogle release];
    [_btnTecLaguna release];
    [_btnFacebook release];
    [_btnYoutube release];
    [super dealloc];
}
@end
