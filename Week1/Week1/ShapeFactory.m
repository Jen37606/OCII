//
//  ShapeFactory.m
//  Week1
//
//  Created by Jennifer Johnson on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ShapeFactory.h"
#import "ShapeClass.h"
#import "SquareClass.h"
#import "TriangleClass.h"
#import "RectangleClass.h"

@implementation ShapeFactory

+(ShapeClass*)CreateShape:(NSInteger)type{

    switch (type) {
        case 0:
            return [[TriangleClass alloc] init];
            break;
        case 1:
            return [[SquareClass alloc] init];
            break;
        case 2:
            return [[RectangleClass alloc] init];
            break;
        default:
            NSLog(@"error");
            break;
    }
    return nil;
}

@end
