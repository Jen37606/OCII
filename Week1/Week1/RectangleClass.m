//
//  RectangleClass.m
//  Week1
//
//  Created by Jennifer Johnson on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RectangleClass.h"

@implementation RectangleClass

-(id)init
{
    if(self = [super init])
    {
        numSides = 4;
        name = @"Rectangle";
    }
    return self;
}

-(int)GetArea;
{
    return 3 * 5;
}

@end
