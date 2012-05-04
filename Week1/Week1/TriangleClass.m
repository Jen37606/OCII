//
//  TriangleClass.m
//  Week1
//
//  Created by Jennifer Johnson on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TriangleClass.h"

@implementation TriangleClass

-(id)init
{
    if(self = [super init])
    {
        numSides = 3;
        name = @"Triangle";
    }
    return self;
}

-(int)GetArea;
{
    //get area for a triangle
    return 0.5 * 4 * 3;
}

@end
