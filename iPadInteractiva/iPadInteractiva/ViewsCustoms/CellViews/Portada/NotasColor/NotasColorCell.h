//
//  NotasColorCell.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 28/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NotasColorCellDelegate;

@interface NotasColorCell : UITableViewCell{
    
    //Modificacion de la imagen
    float oldWidth;
    float scaleFactor;
}

//Delegados
@property (strong, nonatomic) id <NotasColorCellDelegate> delegateTouchImagen;

//Datos
@property (nonatomic, retain) NSString *seccion;
@property (nonatomic, retain) NSString *tituloSeccion;
@property (nonatomic, retain) NSMutableArray *arrayDatos;

//Detalle de la nota
@property (strong, nonatomic) IBOutlet UIButton *btnMostrarDetalleInfo;
- (IBAction)mostrarDetalleInfo:(id)sender;

//--CON FOTO

@property (strong, nonatomic) IBOutlet UIView *viewConFoto;

//Spinner
@property (strong, nonatomic) NSString *activarSpinner;
@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *cellSpinner;

//Imagen
@property (strong, nonatomic) IBOutlet UIImageView *imagenNota;

//Titulo
@property (strong, nonatomic) IBOutlet UIImageView *imagenFontoTituloConImagen;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloConImagen;

//--SIN FOTO

@property (strong, nonatomic) IBOutlet UIView *viewSinFoto;

//Titulo
@property (strong, nonatomic) IBOutlet UIImageView *imagenFontoTituloSinImagen;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloSinImagen;

@end

//Protocolos

@protocol NotasColorCellDelegate <NSObject>

- (void)mostrarInformacionDetalle:(id)sender : (NSString *)seccion;

@end