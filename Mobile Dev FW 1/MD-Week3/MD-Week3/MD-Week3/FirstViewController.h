//
//  FirstViewController.h
//  MD-Week3
//
//  Created by Alan Gonzalez on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapViewController.h"
#import "BussinessObj.h"

@interface FirstViewController : UITableViewController{
    NSMutableArray *bussinesses;
    MapViewController *map;
    BussinessObj *bussiness;
}

@end
