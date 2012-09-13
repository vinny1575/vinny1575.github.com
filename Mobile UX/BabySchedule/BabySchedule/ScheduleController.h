//
//  ScheduleController.h
//  BabySchedule
//
//  Created by Alan Gonzalez on 9/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ScheduleController : UITableViewController{
    
}
- (IBAction)addItem:(id)sender;
@property (nonatomic, strong) NSMutableDictionary *sendData;
@property (nonatomic, strong) NSMutableArray *data;
@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

@end
