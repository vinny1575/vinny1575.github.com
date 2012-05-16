//
//  ViewController.m
//  ObjC2-Week3
//
//  Created by Alan Gonzalez on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "AddEventViewController.h"

@interface ViewController () <EventDelegate>

@end

@implementation ViewController

//delegate method
@synthesize eventsTxtView;
-(void)eventAdded:(NSString *)event{
    eventsTxtView.text = [eventsTxtView.text stringByAppendingString:event];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setEventsTxtView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)addEvent:(id)sender {
    AddEventViewController *addEvent = [AddEventViewController new];
    addEvent.delegate = self;
    [self presentModalViewController:addEvent animated:YES];
}

@end
