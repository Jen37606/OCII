//
//  AddEventScreen.h
//  DatePlanner
//
//  Created by Jennifer Johnson on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddEventScreenDelegate <NSObject>
@required
-(void)DidEnd:(NSString*)inputString;

@end

@interface AddEventScreen : UIViewController <UITextFieldDelegate>
{
    id<AddEventScreenDelegate> delegate;
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UITextField *eventField;
    IBOutlet UILabel *swipeLeft;
    UISwipeGestureRecognizer *leftSwiper;
    UIAlertView *errorCheck;
}
-(IBAction)closeKeyboard:(id)sender;

@property (strong) id<AddEventScreenDelegate> delegate;

@end
