//
//  ItemViewController.m
//  BabySchedule
//
//  Created by Alan Gonzalez on 9/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ItemViewController.h"

@interface ItemViewController ()

@end

@implementation ItemViewController
@synthesize timeLabel;
@synthesize datePicker;
@synthesize setTime;
@synthesize itemTitle,data, fillData;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm a"];
    
    //Optionally for time zone converstions
    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"..."]];
    if (fillData == nil) {
        NSDate *time = [datePicker date];
        
        NSString *stringFromDate = [formatter stringFromDate:time];
        
        timeLabel.text = stringFromDate;
    }else{
        NSString *tempTitle = (NSString*)[fillData objectForKey:@"title"];
        NSString *tempTime = (NSString*)[fillData objectForKey:@"time"];
        NSDate *time = [formatter dateFromString:tempTime];
        
        [datePicker setDate:time];
        [timeLabel setText:tempTime];
        [itemTitle setText:tempTitle];
    }

}

- (void)viewDidUnload
{
    [self setItemTitle:nil];
    [self setSetTime:nil];
    [self setTimeLabel:nil];
    [self setDatePicker:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)done:(id)sender {
    NSMutableDictionary *saveData = [[NSMutableDictionary alloc] init];
    [saveData setObject:itemTitle.text forKey:@"title"];
    [saveData setObject:timeLabel.text forKey:@"time"];
    
    [data addObject:saveData];
    
    NSManagedObjectContext *context = [(AppDelegate*)[[UIApplication sharedApplication] delegate] managedObjectContext];
    NSManagedObject *saveCD = [NSEntityDescription
                                       insertNewObjectForEntityForName:@"Data"
                                       inManagedObjectContext:context];
    [saveCD setValue:itemTitle.text forKey:@"detail"];
    [saveCD setValue:timeLabel.text forKey:@"time"];
    
    NSError *error;
    if (![context save:&error]) {
        NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
    }
    
    
    [self.navigationController popViewControllerAnimated:YES];
    
    UILocalNotification *not = [[UILocalNotification alloc] init];
    [not setFireDate:datePicker.date];
    [not setAlertAction:@"View Event"];
    [not setTimeZone:[NSTimeZone defaultTimeZone]];
    [not setAlertBody:itemTitle.text];
    not.soundName = UILocalNotificationDefaultSoundName;
    not.applicationIconBadgeNumber = -1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:not];
}
- (IBAction)timeChanged:(id)sender {
    NSDate *time = [datePicker date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm a"];
    
    
    NSString *stringFromDate = [formatter stringFromDate:time];
    
    timeLabel.text = stringFromDate;
}

- (IBAction)setTime:(id)sender {
    [itemTitle resignFirstResponder];
}
@end
