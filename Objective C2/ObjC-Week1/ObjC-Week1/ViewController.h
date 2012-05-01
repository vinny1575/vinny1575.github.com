//
//  ViewController.h
//  ObjC-Week1
//
//  Created by Alan Gonzalez on 4/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShapeFactory.h"
#import "TriangleClass.h"
#import "SquareClass.h"
#import "RectangleClass.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *shape1;
@property (strong, nonatomic) IBOutlet UILabel *area1;
@property (strong, nonatomic) IBOutlet UILabel *shape2;
@property (strong, nonatomic) IBOutlet UILabel *area2;
@property (strong, nonatomic) IBOutlet UILabel *shape3;
@property (strong, nonatomic) IBOutlet UILabel *area3;

@end
