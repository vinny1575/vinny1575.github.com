//
//  ViewController.m
//  ObjC2-Week3
//
//  Created by Alan Gonzalez on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EventsViewController.h"
#import "AddEventViewController.h"

@interface EventsViewController () <EventDelegate>

@end

@implementation EventsViewController

//delegate method
@synthesize eventsTxtView;
-(void)eventAdded:(NSString *)event{
    eventsTxtView.text = [eventsTxtView.text stringByAppendingString:event];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //get data from nsuser defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *eventText = [defaults stringForKey:@"savedEvents"];
    if (eventText.length > 0) {
        eventsTxtView.text = eventText;
    }
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

//add event and set viewcontroller as delegate
- (IBAction)addEvent:(id)sender {
    AddEventViewController *addEvent = [AddEventViewController new];
    addEvent.delegate = self;
    [self presentModalViewController:addEvent animated:YES];
}

- (IBAction)saveBtn:(id)sender {
    //save data to nsuserdefaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setValue:[NSString stringWithFormat:eventsTxtView.text] forKey:@"savedEvents"];
    [defaults synchronize];//have to sync or nothing saves.
}
@end
