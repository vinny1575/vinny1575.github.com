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
    UILabel *userName = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 120, 40)];
    userName.text = @"Username:";
    [self.view addSubview:userName];
    UITextField *userNameTxt = [[UITextField alloc] initWithFrame:CGRectMake(140, 10, 200, 40)];
    [self.view addSubview:userNameTxt];
    UIButton *buttonLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonLogin setFrame:CGRectMake(250, 60, 100, 40)];
    [buttonLogin setTitle:@"Login" forState:UIControlStateNormal];
    [self.view addSubview:buttonLogin];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

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
