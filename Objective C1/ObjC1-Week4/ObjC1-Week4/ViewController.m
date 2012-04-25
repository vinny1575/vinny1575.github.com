//
//  ViewController.m
//  ObjC1-Week4
//
//  Created by Alan Gonzalez on 4/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UILabel *userName = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 120, 40)];
    userName.text = @"Username:";
    [userName setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:userName];
    UITextField *userNameTxt = [[UITextField alloc] initWithFrame:CGRectMake(120, 10, 200, 40)];
    [userNameTxt setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:userNameTxt];
    UIButton *buttonLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonLogin setFrame:CGRectMake(220, 60, 100, 40)];
    [buttonLogin setTitle:@"Login" forState:UIControlStateNormal];
    [buttonLogin addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonLogin];
    
    UILabel *pleaseEnter = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, 320, 80)];
    pleaseEnter.text = @"Please Enter Username";
    [pleaseEnter setTextColor:[UIColor blueColor]];
    [pleaseEnter setTextAlignment:UITextAlignmentCenter];
    [pleaseEnter setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:pleaseEnter];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)onClick

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
