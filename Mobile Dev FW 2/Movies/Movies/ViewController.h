//
//  ViewController.h
//  Movies
//
//  Created by Mikel Gonzalez on 10/18/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieItem.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *atitle;
@property (weak, nonatomic) IBOutlet UILabel *showTimes;
@property (nonatomic, strong) MovieItem *movieItem;
@end
