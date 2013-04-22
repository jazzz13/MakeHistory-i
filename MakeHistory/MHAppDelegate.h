//
//  MHAppDelegate.h
//  MakeHistory
//
//  Created by CRiS on 22.04.13.
//  Copyright (c) 2013 Mur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MHAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
