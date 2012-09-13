//
//  ItemViewController.h
//  BabySchedule
//
//  Created by Alan Gonzalez on 9/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ItemViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *itemTitle;

@property(nonatomic, strong)NSMutableArray *data;
@property(nonatomic, strong)NSMutableDictionary *fillData;
- (IBAction)done:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *setTime;
- (IBAction)timeChanged:(id)sender;
- (IBAction)setTime:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

@end
