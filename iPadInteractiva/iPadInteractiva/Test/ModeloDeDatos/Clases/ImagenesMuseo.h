//
//  ImagenesMuseo.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 22/11/13.
//  Copyright (c) 2013 Programador Aplicaciones Moviles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Museos;

@interface ImagenesMuseo : NSManagedObject

@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSNumber * orden;
@property (nonatomic, retain) NSString * descripcion;
@property (nonatomic, retain) Museos *museo;

@end
