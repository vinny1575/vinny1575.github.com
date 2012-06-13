//
//  ViewController.h
//  MD-Week3
//
//  Created by Alan Gonzalez on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BussinessObj.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapViewController : UIViewController <MKMapViewDelegate>
@property (nonatomic, strong)  BussinessObj *bussiness;
@property (strong, nonatomic) IBOutlet MKMapView *myMapView;

@end
