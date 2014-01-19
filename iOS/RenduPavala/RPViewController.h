//
//  RPViewController.h
//  RenduPavala
//
//  Created by Prasad Adireddi on 02/01/14.
//  Copyright (c) 2014 FreeLancer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface RPViewController : UIViewController <UITabBarDelegate, UITableViewDelegate, UITableViewDataSource, NSFetchedResultsControllerDelegate>{
    IBOutlet UITableView* _feedTableView;
    IBOutlet UITabBar* _mainTabBar;
}

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
