//
//  NotasSeccionCustomCell.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 30/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import "NotasSeccionCustomCell.h"

@implementation NotasSeccionCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{
    
    [super setSelected:selected animated:animated];

    //Cambiar font de textos
    [self cambiarFontText];
}

#pragma mark - Cambiar Font

-(void)cambiarFontText{
    
    self.lbTituloConImagen.font = [UIFont fontWithName:FONT_Bold size:18.0f];
    self.lbTituloSinImagen.font = [UIFont fontWithName:FONT_Bold size:24.0f];
}

#pragma mark - Datos de las notas

-(void)setTituloSeccion:(NSString *)tituloSeccion{
    
    self.seccion = tituloSeccion;
}

-(void)setArrayDatos:(NSMutableArray *)arrayDatos{
    
    self.lbTituloConImagen.text = [arrayDatos valueForKey:@"titulo"];
    self.lbTituloSinImagen.text = [arrayDatos valueForKey:@"titulo"];
    
    //Imagen
    if (![[arrayDatos valueForKey:@"data"] isEqualToString:IMG_CELDA_DEFAULT])
    {
        self.viewConFoto.hidden = NO;
        self.viewSinFoto.hidden = YES;
        
        NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:[arrayDatos valueForKey:@"data"]]];
        
        [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
         {
             if (!error)
             {
                 UIImage *imageNota = [UIImage imageWithData:data];
                 
                 oldWidth = imageNota.size.width;
                 
                 if (imageNota.size.height < 300)
                     scaleFactor = 360 / oldWidth;
                 else
                     scaleFactor = 400 / oldWidth;
                 
                 float newHeight = imageNota.size.height * scaleFactor;
                 float newWidth = oldWidth * scaleFactor;
                 
                 UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
                 [imageNota drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
                 UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
                 UIGraphicsEndImageContext();
                 
                 self.imagenNota.image = newImage;
                 
                 [self.cellSpinner stopAnimating];
                 self.cellSpinner.hidden = YES;
             }
         }];
    }
    else
    {
        self.viewConFoto.hidden = YES;
        self.viewSinFoto.hidden = NO;
    }
}

#pragma mark - Activar Spinner

-(void)setActivarSpinner:(NSString *)activarSpinner{
    
    self.cellSpinner.hidden = NO;
    [self.cellSpinner startAnimating];
}

#pragma mark - Mostrar detalle

- (IBAction)mostrarDetalleInfo:(id)sender {
    
    [self.delegateTouchImagen mostrarInformacionDetalle:sender :self.seccion];
}

@end
