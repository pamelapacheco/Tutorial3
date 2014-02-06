//
//  LoUltimoCustomCell.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 24/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoUltimoCustomCell : UITableViewCell

//Datos
@property (nonatomic) int intIndexRow;
@property (nonatomic, retain) NSMutableArray *arrayDatosLoUltimo;
@property (strong, nonatomic) NSMutableString * idCharacters;
@property (strong, nonatomic) IBOutlet UILabel *lbHora;
@property (strong, nonatomic) IBOutlet UILabel *lbTitulo;
@property (strong, nonatomic) IBOutlet UIImageView *imagenFondo;

@end
