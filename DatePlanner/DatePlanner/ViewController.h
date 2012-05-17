//
//  ViewController.h
//  DatePlanner
//
//  Created by Jennifer Johnson on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventScreen.h"

@interface ViewController : UIViewController <AddEventScreenDelegate>
{
    IBOutlet UITextView *eventText;
    NSMutableArray *eventArray;
}

-(IBAction)onClick:(id)sender;

@end
