//
//  UserDetail.m
//  twetter
//
//  Created by Mikel Gonzalez on 10/4/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import "UserDetail.h"

@interface UserDetail ()

@end

@implementation UserDetail

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    ACAccountStore *store = [[ACAccountStore alloc] init];
    ACAccountType *type = [store accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
    
    [store requestAccessToAccountsWithType:type options:nil completion:^(BOOL granted, NSError* error){
        if (granted) {
            accounts = [store accountsWithAccountType:type];
            [self getTwitterData];
        }
        
    }];
}

-(void)getTwitterData{
    ACAccount *currentAccount = [accounts objectAtIndex:0];
    NSString *updateURL = [NSString stringWithFormat:@"https://api.twitter.com/1/users/show.json?screen_name=%@&include_entities=true", currentAccount.username];
    TWRequest *postRequest = [[TWRequest alloc] initWithURL:[NSURL URLWithString:updateURL] parameters:nil requestMethod:TWRequestMethodGET];
    [postRequest setAccount:currentAccount];
    
    [postRequest performRequestWithHandler:^(NSData *responseData, NSHTTPURLResponse *urlResponse, NSError *error) {
        userData = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:nil];
        if (userData != nil)
        {
            NSLog(@"%@", [userData description]);
            [self performSelectorOnMainThread:@selector(updateFields) withObject:nil waitUntilDone:NO];
        }
    }];
}

-(void)updateFields{
    self.name.text = [userData objectForKey:@"name"];
    self.desc.text = [userData objectForKey:@"description"];
    self.followers.text = [NSString stringWithFormat:@"%@", [userData objectForKey:@"followers_count"]];
    self.friends.text = [NSString stringWithFormat:@"%@", [userData objectForKey:@"friends_count"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
