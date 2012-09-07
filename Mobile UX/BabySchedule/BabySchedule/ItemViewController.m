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
@synthesize itemTitle,data;

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
    NSDate *time = [datePicker date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm a"];
    
    //Optionally for time zone converstions
    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"..."]];
    
    NSString *stringFromDate = [formatter stringFromDate:time];
    
    timeLabel.text = stringFromDate;
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
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)timeChanged:(id)sender {
    NSDate *time = [datePicker date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm a"];
    
    //Optionally for time zone converstions
    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"..."]];
    
    NSString *stringFromDate = [formatter stringFromDate:time];
    
    timeLabel.text = stringFromDate;
}

- (IBAction)setTime:(id)sender {
    [itemTitle resignFirstResponder];
}
@end
