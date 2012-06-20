//
//  FirstViewControllerViewController.h
//  MD1-Week4
//
//  Created by Alan Gonzalez on 6/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface FirstViewControllerViewController : UITableViewController <NSXMLParserDelegate>{
    NSMutableArray *array;
    NSMutableArray *elementArray;
    NSMutableString *element;
    NSString *sentString;
}

@end
