//
//  Favoritos.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 13/12/13.
//  Copyright (c) 2013 Programador Aplicaciones Moviles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Favoritos : NSManagedObject

@property (nonatomic, retain) NSString * autor;
@property (nonatomic, retain) NSString * balazo;
@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) NSString * cabeza;
@property (nonatomic, retain) NSNumber * comments;
@property (nonatomic, retain) NSString * fecha;
@property (nonatomic, retain) NSData * fotoNota;
@property (nonatomic, retain) NSNumber * idNota;
@property (nonatomic, retain) NSString * seccion;
@property (nonatomic, retain) NSString * thumb;
@property (nonatomic, retain) NSString * sigloTV;
@property (nonatomic, retain) NSString * youtube;
@property (nonatomic, retain) NSString * pieFoto;

@end
