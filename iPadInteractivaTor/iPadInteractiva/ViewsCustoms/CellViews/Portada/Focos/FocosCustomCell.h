//
//  FocosCustomCell.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 17/10/13.
//  Copyright (c) 2013 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FocosCustomCell : UITableViewCell {
    
    //Modificacion de la imagen
    float oldWidth;
    float scaleFactor;
}

//Datos
@property(retain,nonatomic) NSMutableArray *arrayNotasFocos;
@property (strong, nonatomic) IBOutlet UILabel *lbTituloFoco;

//Imagen
@property (strong, nonatomic) IBOutlet UIImageView *imagenFoco;

//Spinner
@property (strong, nonatomic) NSString *activarSpinner;
@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *cellSpinner;

@end
