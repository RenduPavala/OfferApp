//
//  RPAppDelegate.h
//  RenduPavala
//
//  Created by Prasad Adireddi on 02/01/14.
//  Copyright (c) 2014 FreeLancer. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface RPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (readonly, strong, nonatomic) NSManagedObjectContext *RPManagedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *RPManagedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *RPPersistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end
