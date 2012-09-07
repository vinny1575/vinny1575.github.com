//
//  ScheduleController.h
//  BabySchedule
//
//  Created by Alan Gonzalez on 9/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScheduleController : UITableViewController
- (IBAction)addItem:(id)sender;
@property (nonatomic, strong) NSMutableArray *data;

@end
