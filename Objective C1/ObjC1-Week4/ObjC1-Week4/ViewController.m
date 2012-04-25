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
    
    //ui elements
    UILabel *userName = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 120, 40)];
    userName.text = @"Username:";
    [userName setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:userName];
    userNameTxt = [[UITextField alloc] initWithFrame:CGRectMake(120, 10, 200, 40)];
    [userNameTxt setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:userNameTxt];
    UIButton *buttonLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonLogin setFrame:CGRectMake(220, 60, 100, 40)];
    [buttonLogin setTag:0];
    [buttonLogin setTitle:@"Login" forState:UIControlStateNormal];
    [buttonLogin addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonLogin];
    
    //gray label with login notification
    pleaseEnter = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, 320, 80)];
    pleaseEnter.text = @"Please Enter Username";
    [pleaseEnter setTextColor:[UIColor blueColor]];
    [pleaseEnter setTextAlignment:UITextAlignmentCenter];
    [pleaseEnter setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:pleaseEnter];
    
    //date button
    UIButton *dateBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [dateBtn setFrame:CGRectMake(10, 220, 100, 40)];
    [dateBtn setTitle:@"Show Date" forState:UIControlStateNormal];
    [dateBtn setTag:1];
    [dateBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dateBtn];
    
    //info button
    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [infoBtn setFrame:CGRectMake(10, 300, 30, 30)];
    [infoBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [infoBtn setTag:3];
    [self.view addSubview:infoBtn];
    
    //blank label
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 330, 320, 100)];
    [infoLabel setNumberOfLines:2];
    [self.view addSubview:infoLabel];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)onClick:(UIButton *)sender{
    if(sender.tag == 0){
        //check the length of the username field
        if (userNameTxt.text.length == 0) {
            pleaseEnter.text = @"Username Cannot Be Empty.";
        }else {
            pleaseEnter.text = [NSString stringWithFormat:@"User: %@ has been logged in.", userNameTxt.text];
        }
    }else if(sender.tag == 1){
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        [dateFormat setDateFormat:@"MMMM dd, YYYY HH:MM:SS a zzzz"];
        
        //date and date formatter
        NSDate *now = [[NSDate alloc] init];
        
        NSString *theDate = [dateFormat stringFromDate:now];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Date" message:theDate delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }else{
        [infoLabel setText:@"This application was written by Alan Gonzalez"];
    }
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
