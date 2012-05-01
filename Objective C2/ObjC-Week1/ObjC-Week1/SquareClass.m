//
//  SquareClass.m
//  ObjC-Week1
//
//  Created by Alan Gonzalez on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SquareClass.h"

@implementation SquareClass

- (id)init{
    self = [super init];
    if (self) {
        numSides = 4;
        name = @"square";
    }
    return self;
}

//override get area
-(int)GetArea{
    //base * height
    return 20 *20;
}

@end
