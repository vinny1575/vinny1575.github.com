//
//  ViewController.m
//  MD-Week3
//
//  Created by Alan Gonzalez on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController
@synthesize bussiness;
@synthesize myMapView;
@synthesize name;
@synthesize lat;
@synthesize lon;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated{
    name.text = bussiness.bussinessName;
    lat.text = [NSString stringWithFormat:@"%f", bussiness.latitude]; 
    lon.text = [NSString stringWithFormat:@"%f", bussiness.longitute]; 
    
    CLLocationCoordinate2D coord = CLLocationCoordinate2DMake(bussiness.latitude, bussiness.longitute);
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    annotation.coordinate = coord;
    annotation.title = bussiness.bussinessName;
    
    [myMapView addAnnotation:annotation];
    
    MKCoordinateRegion coordinateRegion;   //Creating a local variable
    
    coordinateRegion.center = coord;  //See notes below
    coordinateRegion.span.latitudeDelta = .5;
    coordinateRegion.span.longitudeDelta = .5;
    
    [myMapView setRegion:coordinateRegion animated:YES];
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    MKPinAnnotationView *pin = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"pin"];
    [pin setCanShowCallout:YES];
    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//    [pin setRightCalloutAccessoryView:btn];
    
    pin.pinColor = MKPinAnnotationColorRed;
    
    
    return pin;
}

- (void)viewDidUnload
{
    [self setMyMapView:nil];
    [self setName:nil];
    [self setLat:nil];
    [self setLon:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
