//
//  FocosCustomCell.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 17/10/13.
//  Copyright (c) 2013 Programador Aplicaciones Moviles. All rights reserved.
//

#import "FocosCustomCell.h"

#import <QuartzCore/QuartzCore.h>

@implementation FocosCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) { }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    //Cambiar font de textos
    [self cambiarFontText];
}

#pragma mark - Cambiar Font

-(void)cambiarFontText{
    
    self.lbTituloFoco.font = [UIFont fontWithName:FONT_Bold size:20.0f];
}

#pragma mark - Activar Spinner

-(void)setActivarSpinner:(NSString *)activarSpinner{
    
    self.cellSpinner.hidden = NO;
    [self.cellSpinner startAnimating];
}

#pragma mark - datos de las notas

-(void)setArrayNotasFocos:(NSMutableArray *)arrayNotasFocos{
    
    self.lbTituloFoco.text = [arrayNotasFocos valueForKey:@"cabeza"];
    
    //Imagen
    if (![[arrayNotasFocos valueForKey:@"data"] isEqualToString:IMG_CELDA_DEFAULT])
    {
        NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:[arrayNotasFocos valueForKey:@"data"]]];
        
        [NSURLConnection sendAsynchronousRequest:request  queue:[NSOperationQueue mainQueue]  completionHandler:^(NSURLResponse * response,  NSData * data,  NSError * error)
         {
             if (!error)
             {
                 UIImage *imageNota = [UIImage imageWithData:data];
                 
                 oldWidth = imageNota.size.width;
                 
                 if (imageNota.size.height < 220 )
                     scaleFactor = 500 / oldWidth;
                 else
                     scaleFactor = 300 / oldWidth;
                 
                 float newHeight = imageNota.size.height * scaleFactor;
                 float newWidth = oldWidth * scaleFactor;
                 
                 UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
                 [imageNota drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
                 UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
                 UIGraphicsEndImageContext();
                 
                 self.imagenFoco.image = newImage;
                 
                 [self.cellSpinner stopAnimating];
                 self.cellSpinner.hidden = YES;
             }
         }];
    }
}

@end
