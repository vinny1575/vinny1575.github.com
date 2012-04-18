//
//  ViewController.h
//  Obj-C1-Week-3
//
//  Created by Alan Gonzalez on 4/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (int) add:(int)num1 with:(int)num2;
- (BOOL) compare:(int)num1 with:(int)num2;
- (NSString*) append:(NSString*)string1 with:(NSString*)string2;
- (void) displayAlertWithString:(NSString*)string;

@end
