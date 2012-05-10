//
//  ViewController.m
//  ObjC2-Week2-Calc
//
//  Created by Alan Gonzalez on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize resultsField;

- (void)viewDidLoad
{
    active = YES;
    numbers = [NSMutableArray new];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setResultsField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)onOffSw:(id)sender {
    UISwitch *mySwitch = sender;
    if (mySwitch.isOn) {
        active = YES;
    }else{
        active = NO;
    }
}

//Numbers
- (IBAction)one:(id)sender {
    if (active) {
        resultsField.text = [resultsField.text stringByAppendingString:@"1"];
    }
}

- (IBAction)two:(id)sender {
    if (active) {
        resultsField.text = [resultsField.text stringByAppendingString:@"2"];
    }
}

- (IBAction)three:(id)sender {
    if (active) {
        resultsField.text = [resultsField.text stringByAppendingString:@"3"];
    }
}

- (IBAction)four:(id)sender {
    if (active) {
        resultsField.text = [resultsField.text stringByAppendingString:@"4"];
    }
}

- (IBAction)five:(id)sender {
    if (active) {
        resultsField.text = [resultsField.text stringByAppendingString:@"5"];
    }
}

- (IBAction)six:(id)sender {
    if (active) {
        resultsField.text = [resultsField.text stringByAppendingString:@"6"];
    }
}

- (IBAction)seven:(id)sender {
    if (active) {
        resultsField.text = [resultsField.text stringByAppendingString:@"7"];
    }
}

- (IBAction)eight:(id)sender {
    if (active) {
        resultsField.text = [resultsField.text stringByAppendingString:@"8"];
    }
}

- (IBAction)nine:(id)sender {
    if (active) {
        resultsField.text = [resultsField.text stringByAppendingString:@"9"];
    }
}

- (IBAction)zero:(id)sender {
    if (active) {
        resultsField.text = [resultsField.text stringByAppendingString:@"0"];
    }
}

- (IBAction)plus:(id)sender {
    if (active) {        
        NSNumber *number = [NSNumber numberWithInt:resultsField.text.intValue];
        [numbers addObject:number];
        
        //clear field
        resultsField.text = @"";
    }
}
//End Numbers

- (IBAction)equal:(id)sender {
    if (active) {
        //add last number
        NSNumber *number = [NSNumber numberWithInt:resultsField.text.intValue];
        [numbers addObject:number];
        
        int solution = 0;
        for (NSNumber *num in numbers) {
            NSLog(@"%d", num.intValue);
            solution += num.intValue;
        }
        resultsField.text = [NSString stringWithFormat:@"%d", solution];
    }
}

- (IBAction)clear:(id)sender {
    if (active){
        [numbers removeAllObjects];
        [resultsField setText:@""];
    }
}

- (IBAction)info:(id)sender {
}
- (IBAction)bgSegCntrl:(id)sender {
}
@end
