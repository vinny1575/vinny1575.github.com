//
//  ShapeFactory.h
//  ObjC-Week1
//
//  Created by Alan Gonzalez on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TriangleClass.h"
#import "SquareClass.h"
#import "RectangleClass.h"

@interface ShapeFactory : NSObject

//static method
+(id)createShape:(NSInteger)index;

@end
