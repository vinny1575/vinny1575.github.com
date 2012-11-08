//
//  UserDetail.h
//  twetter
//
//  Created by Mikel Gonzalez on 10/4/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <Twitter/Twitter.h>

@interface UserDetail : UIViewController{
    NSArray *accounts;
    NSDictionary *userData;
}
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *desc;
@property (weak, nonatomic) IBOutlet UILabel *followers;
@property (weak, nonatomic) IBOutlet UILabel *friends;

@end
