//
//  SecondViewController.m
//  MD-Week3
//
//  Created by Alan Gonzalez on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize bussinesses;
@synthesize myMapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMyMapView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)viewDidAppear:(BOOL)animated{
    for (BussinessObj *bussiness in bussinesses) {
        CLLocationCoordinate2D coord = CLLocationCoordinate2DMake(bussiness.latitude, bussiness.longitute);
        
        MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
        annotation.coordinate = coord;
        annotation.title = bussiness.bussinessName;
        
        [myMapView addAnnotation:annotation];
    }
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    MKPinAnnotationView *pin = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"pin"];
    [pin setCanShowCallout:YES];
    
    //    UIButton *btn = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    //    [pin setRightCalloutAccessoryView:btn];
    
    pin.pinColor = MKPinAnnotationColorRed;
    
    
    return pin;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
