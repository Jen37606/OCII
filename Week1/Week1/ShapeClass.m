//
//  ShapeClass.m
//  Week1
//
//  Created by Jennifer Johnson on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ShapeClass.h"

@implementation ShapeClass
-(id)init
{
    self = [super init];
    if(self != nil)
    {
        
    }
    return self;
}

-(int)GetArea
{
    return 0;
}

-(int)GetNumSides
{
    return numSides;
}

-(NSString*)GetName
{
    return name;
}


/*
 -(NSString*)getText
{
    name = [NSString stringWithFormat:@"numSides = %d, test = %f", numSides, testnum];
    if (name != nil)
    {
        return name;
    }
    return nil;
    return @"text from ShapeClass";
}
 */

@end
