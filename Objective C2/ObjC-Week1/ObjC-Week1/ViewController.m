//
//  ViewController.m
//  ObjC-Week1
//
//  Created by Alan Gonzalez on 4/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize shape1, shape2, shape3;
@synthesize area1, area2, area3;

- (void)viewDidLoad
{
    [super viewDidLoad];
    TriangleClass *triangle = [ShapeFactory createShape:1];
    shape1.text = [triangle GetName];
    area1.text = [NSString stringWithFormat:@"%d", [triangle GetArea]];
    
    SquareClass *square = [ShapeFactory createShape:0];
    shape2.text = [square GetName];
    area2.text = [NSString stringWithFormat:@"%d", [square GetArea]];
    
    RectangleClass *rectangle = [ShapeFactory createShape:2];
    shape3.text = [rectangle GetName];
    area3.text = [NSString stringWithFormat:@"%d", [rectangle GetArea]];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setShape1:nil];
    [self setArea1:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
