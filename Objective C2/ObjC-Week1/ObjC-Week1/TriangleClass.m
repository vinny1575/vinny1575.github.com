//
//  TriangleClass.m
//  ObjC-Week1
//
//  Created by Alan Gonzalez on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TriangleClass.h"

@implementation TriangleClass

- (id)init{
    self = [super init];
    if (self) {
        numSides = 3;
        name = @"triangle";
    }
    return self;
}

//ovveride getarea
- (int)GetArea{
    //0.5f (base *height)
    return 0.5f * (10 *5);
}
@end
