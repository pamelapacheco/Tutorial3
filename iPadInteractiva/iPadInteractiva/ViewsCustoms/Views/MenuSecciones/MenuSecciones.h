//
//  MenuSecciones.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 31/10/13.
//  Copyright (c) 2013 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MenuSeccionesDelegate;

@interface MenuSecciones : UIView

//Delegado
@property (strong, nonatomic) id <MenuSeccionesDelegate> delegateMenuSecciones;

//Configurar vista
@property (strong, nonatomic) IBOutlet UIView *viewSecciones;
@property (strong, nonatomic) IBOutlet UIToolbar *toolBarFondoSecciones;

+ (id)customView;
-(void)configurarToolBarSecciones;


@property (strong, nonatomic) IBOutlet UILabel *lbNoticias;
@property (strong, nonatomic) IBOutlet UIButton *btnPortada;
@property (strong, nonatomic) IBOutlet UIButton *btnTorreon;
@property (strong, nonatomic) IBOutlet UIButton *btnPoliciaca;
@property (strong, nonatomic) IBOutlet UIButton *btnNacional;
@property (strong, nonatomic) IBOutlet UIButton *btnInternacional;
@property (strong, nonatomic) IBOutlet UIButton *btnFinanzas;
@property (strong, nonatomic) IBOutlet UIButton *btnEditorial;
@property (strong, nonatomic) IBOutlet UIButton *btnRegionales;
@property (strong, nonatomic) IBOutlet UIButton *btnGP;
@property (strong, nonatomic) IBOutlet UIButton *btnSaltillo;
@property (strong, nonatomic) IBOutlet UIButton *btnDurango;
@property (strong, nonatomic) IBOutlet UIButton *btnLaLaguna;


@property (strong, nonatomic) IBOutlet UILabel *lbEntretenimiento;
@property (strong, nonatomic) IBOutlet UIButton *btnDeportes;
@property (strong, nonatomic) IBOutlet UIButton *btnEspectaculos;
@property (strong, nonatomic) IBOutlet UIButton *btnNosotros;
@property (strong, nonatomic) IBOutlet UIButton *btnCultura;
@property (strong, nonatomic) IBOutlet UIButton *btnSantos;
@property (strong, nonatomic) IBOutlet UIButton *btnCartelera;


@property (strong, nonatomic) IBOutlet UILabel *lbAdemasLee;
@property (strong, nonatomic) IBOutlet UIButton *btnCiencia;
@property (strong, nonatomic) IBOutlet UIButton *btnTecnologia;
@property (strong, nonatomic) IBOutlet UIButton *btnSucesos;
@property (strong, nonatomic) IBOutlet UIButton *btnSalud;
@property (strong, nonatomic) IBOutlet UIButton *btnSN;
@property (strong, nonatomic) IBOutlet UIButton *btnDC;


//Acciones
- (IBAction)mostrarDetalleSecciones:(id)sender;

@end


@protocol MenuSeccionesDelegate <NSObject>

- (void)mostrarNotasSecciones:(id)sender;

@end