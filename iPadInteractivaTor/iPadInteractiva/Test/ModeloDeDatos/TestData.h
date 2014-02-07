//
//  TestData.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 20/11/13.
//  Copyright (c) 2013 Programador Aplicaciones Moviles. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestData : NSObject

@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

-(void)createData;

@end
