//
//  NotasSeccionesCustomCell.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 25/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotasSeccionesCustomCell : UITableViewCell{
    
    //Modificacion de la imagen
    float oldWidth;
    float scaleFactor;
}

//Datos
@property(retain,nonatomic)  NSMutableArray *arrayDatos;

//Gaalerias
@property (strong, nonatomic) IBOutlet UIImageView *imagen;
@property (strong, nonatomic) IBOutlet UILabel *lbTitulo;

//Spinner
@property (strong, nonatomic) NSString *activarSpinner;
@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *cellSpinner;

@end
