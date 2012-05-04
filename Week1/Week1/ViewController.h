//
//  ViewController.h
//  Week1
//
//  Created by Jennifer Johnson on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ShapeClass;

@interface ViewController : UIViewController
{
    UILabel *textOne;
    UILabel *textTwo;
    UILabel *textThree;
    
    ShapeClass *shapeClass;
}

-(NSString*)getText;
@end
