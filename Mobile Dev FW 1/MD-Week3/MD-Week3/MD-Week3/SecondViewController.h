//
//  SecondViewController.h
//  MD-Week3
//
//  Created by Alan Gonzalez on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BussinessObj.h"
#import <Mapkit/Mapkit.h>

@interface SecondViewController : UIViewController<MKMapViewDelegate>

@property(nonatomic, strong)  NSMutableArray *bussinesses;
@property (strong, nonatomic) IBOutlet MKMapView *myMapView;

@end
