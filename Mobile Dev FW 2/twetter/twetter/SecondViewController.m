//
//  SecondViewController.m
//  twetter
//
//  Created by Mikel Gonzalez on 10/3/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize tweet;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *text = [tweet objectForKey:@"text"];
    NSString *name = [[tweet objectForKey:@"user"] objectForKey:@"name"];
    NSString *time = [[tweet objectForKey:@"user"] objectForKey:@"created_at"];
    
    self.details.text = text;
    self.user.text = [NSString stringWithFormat:@"by %@", name];
    self.date.text = time;
    
    NSString *imageUrl = [[tweet objectForKey:@"user"] objectForKey:@"profile_image_url"];
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageUrl]];
    self.imageView.image = [UIImage imageWithData:data];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
