//
//  ViewController.m
//  Obj-C1-Week-3
//
//  Created by Alan Gonzalez on 4/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    //append strings and create alert
    NSString *myString = [self append:@"Monkey " with:@"Flight"];
    [self displayAlertWithString:myString];
    
    //add numbers and display alert
    int sum = [self add:5 with:10];
    NSNumber *numberSum = [NSNumber numberWithInt:sum];
    NSString *numberString = [numberSum stringValue];
    [self displayAlertWithString:numberString];
    
    //call compare function and show alert
    int int1 = 5;
    int int2 = 5;
    BOOL compareBool = [self compare:int1 with:int2];
    NSString *myCompareString = [NSString stringWithFormat:@"Num one is %d and num two is %d. The Bool is %@", int1, int2, compareBool?@"YES":@"NO"];
    [self displayAlertWithString:myCompareString];
}

//addition method
-(int)add:(int)num1 with:(int)num2{
    return num1 + num2;
}

//Compare method
-(BOOL)compare:(int)num1 with:(int)num2{
    if (num1 == num2) {
        return YES;
    }else{
        return NO;
    }
}

//append strings
-(NSString *)append:(NSString *)string1 with:(NSString *)string2{
    NSMutableString *appendedString = [NSMutableString stringWithString:string1];
    NSString *string = [appendedString stringByAppendingString:string2];
    return string;    
}

//dsiplay alert with string method
-(void)displayAlertWithString:(NSString *)string{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:string delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
