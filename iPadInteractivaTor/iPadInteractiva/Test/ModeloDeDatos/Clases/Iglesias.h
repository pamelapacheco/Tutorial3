//
//  Iglesias.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 30/11/13.
//  Copyright (c) 2013 Programador Aplicaciones Moviles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Iglesias : NSManagedObject

@property (nonatomic, retain) NSString * capellan;
@property (nonatomic, retain) NSString * ciudad;
@property (nonatomic, retain) NSString * correspondencia;
@property (nonatomic, retain) NSString * direccion;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * erigida;
@property (nonatomic, retain) NSString * fax;
@property (nonatomic, retain) NSString * fiesta_patronal;
@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSString * parroco;
@property (nonatomic, retain) NSString * telefono;
@property (nonatomic, retain) NSString * tipo;

@end
