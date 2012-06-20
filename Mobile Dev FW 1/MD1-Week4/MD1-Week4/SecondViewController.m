//
//  SecondViewController.m
//  MD1-Week4
//
//  Created by Alan Gonzalez on 6/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    //first you need to create a URL using String.
    
    NSURL *url = [NSURL URLWithString:@"http://cagt.bu.edu/w/images/c/c9/Mygarden.txt"];
    
    //Once you create a URL,you are ready make a request.
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    //use url request to load webview
    [webView loadRequest:request];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
