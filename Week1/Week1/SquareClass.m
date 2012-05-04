//
//  SquareClass.m
//  Week1
//
//  Created by Jennifer Johnson on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SquareClass.h"

@implementation SquareClass

-(id)init
{
    if(self = [super init])
    {
        numSides = 4;
        name = @"Square";
    }
    return self;
}

-(int)GetArea;
{
    return 4 * 4;
}

@end
