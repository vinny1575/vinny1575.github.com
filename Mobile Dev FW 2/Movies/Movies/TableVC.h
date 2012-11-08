//
//  TableVC.h
//  Movies
//
//  Created by Mikel Gonzalez on 10/18/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieItem.h"

@interface TableVC : UITableViewController{
    NSMutableArray *group1;
    NSMutableArray *group2;
    NSMutableArray *group3;
    MovieItem *sentItem;
}

@end
