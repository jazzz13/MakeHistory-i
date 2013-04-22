//
//  MHMasterViewController.h
//  MakeHistory
//
//  Created by CRiS on 22.04.13.
//  Copyright (c) 2013 Mur. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MHDetailViewController;

#import <CoreData/CoreData.h>

@interface MHMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) MHDetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
