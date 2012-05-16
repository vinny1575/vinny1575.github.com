//
//  ViewController.h
//  ObjC2-Week3
//
//  Created by Alan Gonzalez on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventsViewController : UIViewController

- (IBAction)addEvent:(id)sender;
@property (strong, nonatomic) IBOutlet UITextView *eventsTxtView;

@end
