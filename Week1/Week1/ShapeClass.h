//
//  ShapeClass.h
//  Week1
//
//  Created by Jennifer Johnson on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShapeClass : NSObject
{
@protected
    NSString *name;
    int numSides;
}

-(int)GetNumSides;
-(NSString*)GetName;
-(int)GetArea;

@end
