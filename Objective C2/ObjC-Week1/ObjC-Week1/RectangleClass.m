//
//  RectangleClass.m
//  ObjC-Week1
//
//  Created by Alan Gonzalez on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RectangleClass.h"

@implementation RectangleClass

- (id)init{
    self = [super init];
    if (self) {
        numSides = 4;
        name = @"rectangle";
    }
    return self;
}

//overide getarea
-(int)GetArea{
    //base * height
    return 30 * 15;
}

@end
