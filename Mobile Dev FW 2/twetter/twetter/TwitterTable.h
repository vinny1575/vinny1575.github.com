//
//  TwitterTable.h
//  twetter
//
//  Created by Mikel Gonzalez on 10/3/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import <Twitter/Twitter.h>

@interface TwitterTable : UITableViewController{
    NSArray *accounts;
    NSArray *tweets;
    NSDictionary *tweetSeg;
    UIAlertView *alert;
    TWTweetComposeViewController *tweetView;
}

- (IBAction)refresh:(id)sender;
- (IBAction)tweet:(id)sender;

@end
