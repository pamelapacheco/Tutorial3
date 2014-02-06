//
//  LoUltimoCustomCell.m
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 24/01/14.
//  Copyright (c) 2014 Programador Aplicaciones Moviles. All rights reserved.
//

#import "LoUltimoCustomCell.h"

@implementation LoUltimoCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {   }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{
    
    [super setSelected:selected animated:animated];

    //Cambiar font de textos
    [self cambiarFontText];
}

-(void)cambiarFontText{
    
    self.lbTitulo.font = [UIFont fontWithName:FONT_Regular size:14.0f];
    self.lbHora.font = [UIFont fontWithName:FONT_Regular size:23.0f];
    self.lbHora.textColor = COLOR_ROJO;
    self.lbTitulo.textColor = COLOR_AZUL;
}

#pragma mark - Datos de las notas

-(void)setIntIndexRow:(int)intIndexRow{
    
    if ((intIndexRow%2) == 0)
        self.imagenFondo.hidden = NO;
    else
        self.imagenFondo.hidden = YES;
}

-(void)setArrayDatosLoUltimo:(NSMutableArray *)arrayDatosLoUltimo{
    
    //Titulo
    self.lbTitulo.text = [NSString stringWithFormat:@"%@",[arrayDatosLoUltimo valueForKey:@"titulo"]];
    
    //Fecha
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:[NSDate date]];
    NSInteger yearAct = [components year];
    
    NSString *fechaUltimo = [arrayDatosLoUltimo valueForKey:@"fecha"];
    NSRange rangeValue = [fechaUltimo rangeOfString:[NSString stringWithFormat:@"%i",yearAct] options:NSCaseInsensitiveSearch];
    NSScanner *scanner = [NSScanner scannerWithString:fechaUltimo];
    
    if (rangeValue.length > 0)
    {
        [scanner scanUpToString:@" " intoString:nil];
        NSString * substring = nil;
        
        if([scanner scanUpToString:@" " intoString:&substring])
        {
            self.idCharacters = [NSMutableString string];
            
            for (int i = 0; i < 5; i++)
            {
                NSString * firstLetter = [substring substringWithRange:[substring rangeOfComposedCharacterSequenceAtIndex:i]];
                [self.idCharacters appendString:[firstLetter uppercaseString]];
            }
        }
    }
    
    self.lbHora.text = self.idCharacters;
}

@end
