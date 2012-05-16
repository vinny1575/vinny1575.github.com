//
//  AddEventViewController.h
//  ObjC2-Week3
//
//  Created by Alan Gonzalez on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EventDelegate <NSObject>
- (void)addEvent:(NSString*)event;
@end

@interface AddEventViewController : UIViewController
@property (nonatomic, weak) id <EventDelegate> delegate;
@end
