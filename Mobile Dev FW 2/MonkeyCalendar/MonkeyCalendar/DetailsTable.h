//
//  DetailsTable.h
//  MonkeyCalendar
//
//  Created by Mikel Gonzalez on 9/27/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsTable : UITableViewController <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *locationField;
@property (weak, nonatomic) IBOutlet UITextField *timeField;
@property (weak, nonatomic) IBOutlet UITextField *dateField;


@property (nonatomic, strong) NSString *titleEvent;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSString *time;
@property (nonatomic, strong) NSString *date;

- (IBAction)saveToCal:(id)sender;
@end
