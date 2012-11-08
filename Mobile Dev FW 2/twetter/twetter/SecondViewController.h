//
//  SecondViewController.h
//  twetter
//
//  Created by Mikel Gonzalez on 10/3/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *user;
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *details;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) NSDictionary *tweet;

@end
