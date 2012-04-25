//
//  ViewController.h
//  ObjC1-Week4
//
//  Created by Alan Gonzalez on 4/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController{
    UITextField *userNameTxt;
    UILabel *pleaseEnter;
}

- (void)onClick:(UIButton*)sender;
@end
