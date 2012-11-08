//
//  EventsTableController.h
//  MonkeyCalendar
//
//  Created by Mikel Gonzalez on 9/27/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailsTable.h"

@interface EventsTableController : UITableViewController{
    NSArray *events;
    NSDictionary *currentEvent;
}

@end
