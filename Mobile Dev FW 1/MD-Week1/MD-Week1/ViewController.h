//
//  ViewController.h
//  MD-Week1
//
//  Created by Alan Gonzalez on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    NSMutableArray *foodArray;
}
- (IBAction)editBtn:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end
