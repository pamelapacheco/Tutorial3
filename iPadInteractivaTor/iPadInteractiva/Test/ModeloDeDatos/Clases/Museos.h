//
//  Museos.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 22/11/13.
//  Copyright (c) 2013 Programador Aplicaciones Moviles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ImagenesMuseo;

@interface Museos : NSManagedObject

@property (nonatomic, retain) NSString * descripcion;
@property (nonatomic, retain) NSString * direccion;
@property (nonatomic, retain) NSString * horario;
@property (nonatomic, retain) NSString * idMuseo;
@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSNumber * numImagenes;
@property (nonatomic, retain) NSString * telefono;
@property (nonatomic, retain) NSString * url360;
@property (nonatomic, retain) NSString * urlInformacion;
@property (nonatomic, retain) NSString * imagenPrincipal;
@property (nonatomic, retain) NSSet *imagenes;
@end

@interface Museos (CoreDataGeneratedAccessors)

- (void)addImagenesObject:(ImagenesMuseo *)value;
- (void)removeImagenesObject:(ImagenesMuseo *)value;
- (void)addImagenes:(NSSet *)values;
- (void)removeImagenes:(NSSet *)values;

@end
