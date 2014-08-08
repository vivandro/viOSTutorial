//
//  VVAppDelegate.h
//  viOSTutorial
//
//  Created by Vichare, Vivek on 8/8/14.
//  Copyright (c) 2014 Vivandro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VVAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
