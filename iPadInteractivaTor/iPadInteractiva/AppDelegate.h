//
//  AppDelegate.h
//  iPadInteractiva
//
//  Created by Programador Aplicaciones Moviles on 02/10/13.
//  Copyright (c) 2013 Programador Aplicaciones Moviles. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <RestKit/RestKit.h>

@class HomeViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, RKRequestDelegate, RKObjectLoaderDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) HomeViewController *viewController;

//Datos para el servidor

@property (nonatomic, retain) RKObjectManager* objectManager;

//Datos para la base de datos

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@end
