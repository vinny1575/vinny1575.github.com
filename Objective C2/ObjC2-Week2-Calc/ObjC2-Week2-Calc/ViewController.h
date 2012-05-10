//
//  ViewController.h
//  ObjC2-Week2-Calc
//
//  Created by Alan Gonzalez on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    BOOL active;
    NSMutableArray *numbers;
}
@property (strong, nonatomic) IBOutlet UITextField *resultsField;
- (IBAction)onOffSw:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)plus:(id)sender;
- (IBAction)equal:(id)sender;
- (IBAction)clear:(id)sender;
- (IBAction)info:(id)sender;
- (IBAction)bgSegCntrl:(id)sender;

@end
