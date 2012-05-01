//
//  ShapeFactory.m
//  ObjC-Week1
//
//  Created by Alan Gonzalez on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ShapeFactory.h"

@implementation ShapeFactory

//creates an instance of each shape class
+(id)createShape:(NSInteger)index{
    if (index == 0) {
        return [[SquareClass alloc] init];
    }else if (index == 1) {
        return [[TriangleClass alloc] init];
    }else {
        return [[RectangleClass alloc] init];
    }
}


@end
