//
//  AddEventViewController.m
//  ObjC2-Week3
//
//  Created by Alan Gonzalez on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddEventViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController
@synthesize eventTextFld;
@synthesize datePicker;
@synthesize delegate;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setEventTextFld:nil];
    [self setDatePicker:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)saveBtn:(id)sender {
    if ([datePicker.date isEqualToDate:[NSDate date]] || [datePicker.date compare:[NSDate date]] == NSOrderedDescending) {
        NSDate *date = datePicker.date;
        NSString *dateString = [date description];
        NSString *returnString = [NSString stringWithFormat:@"\n\nNew Event: %@ \n%@", eventTextFld.text, dateString];
        [delegate eventAdded:returnString];
        [self dismissModalViewControllerAnimated:YES];
    }else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Date" message:@"Date needs to be now or in the future."  delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
    
}

- (IBAction)closeKbrdBtn:(id)sender {
    [eventTextFld resignFirstResponder];
}
@end
