//
//  MenuServicios.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 04/02/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuServicios : UIView

@property (strong, nonatomic) IBOutlet UIView *viewTitulo;
@property (strong, nonatomic) IBOutlet UILabel *lbServicios;
@property (strong, nonatomic) IBOutlet UIImageView *imagneLinea;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollViewPrincipal;
@property (strong, nonatomic) IBOutlet UILabel *lbEventos;
@property (strong, nonatomic) IBOutlet UILabel *lbDivisas;
@property (strong, nonatomic) IBOutlet UILabel *lbCine;
@property (strong, nonatomic) IBOutlet UILabel *lbHoroscopos;
@property (strong, nonatomic) IBOutlet UILabel *lbObituarios;
@property (strong, nonatomic) IBOutlet UILabel *lbVuelos;
@property (strong, nonatomic) IBOutlet UILabel *lbIglesias;
@property (strong, nonatomic) IBOutlet UILabel *lbEmergencias;
@property (strong, nonatomic) IBOutlet UILabel *lbLaguna;
@property (strong, nonatomic) IBOutlet UILabel *lbTienda;
@property (strong, nonatomic) IBOutlet UILabel *lbMuseos;
@property (strong, nonatomic) IBOutlet UILabel *lbClima;
@property (strong, nonatomic) IBOutlet UILabel *lbDirectorio;


+ (id)customView;
- (void)configurarVista;

@end
