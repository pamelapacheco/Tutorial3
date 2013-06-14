//
//  FirstViewController.m
//  Tutorial3
//
//  Created by PamLiiz on 04/03/13.
//  Copyright (c) 2013 PamLiiz. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Imagenes", @"Imagenes");
        self.tabBarItem.image = [UIImage imageNamed:@"first.png"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}


- (void)dealloc {
    [_vistaUno release];
    [_vistaDos release];
    [_vistaTres release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Opciones

- (IBAction)unaImagen:(id)sender {
    
    self.vistaUno.hidden = NO;
    self.vistaDos.hidden = YES;
    self.vistaTres.hidden = YES;
}

- (IBAction)dosImagenes:(id)sender {
    
    self.vistaUno.hidden = YES;
    self.vistaDos.hidden = NO;
    self.vistaTres.hidden = YES;
}

- (IBAction)tresImagenes:(id)sender {
    
    self.vistaUno.hidden = YES;
    self.vistaDos.hidden = YES;
    self.vistaTres.hidden = NO;
}

#pragma mark - Guardar Imagen

- (IBAction)guardarImagen:(id)sender {
    
    UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:@"Aviso!!" message:@"Esta opcion se vera en otro tutorial." delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil];
    
    [alert2 show];
}

@end
