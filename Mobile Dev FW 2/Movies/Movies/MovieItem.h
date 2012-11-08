//
//  MovieItem.h
//  Movies
//
//  Created by Mikel Gonzalez on 10/18/12.
//  Copyright (c) 2012 Mikel Gonzalez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieItem : NSObject
@property(nonatomic, strong)NSString *name;
@property(nonatomic, strong)UIImage *image;
@property(nonatomic, strong)NSString *showTimes;

@end
