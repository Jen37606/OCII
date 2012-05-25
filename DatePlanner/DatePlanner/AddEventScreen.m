//
//  AddEventScreen.m
//  DatePlanner
//
//  Created by Jennifer Johnson on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddEventScreen.h"

@implementation AddEventScreen
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


// Close keyboard button
-(IBAction)closeKeyboard:(id)sender
{
    [self.view endEditing:true];
}

/*
//Save the event and date from datepicker
-(IBAction)onClose:(id)sender
{
    if (delegate != nil)
    {
        if (eventField.text.length == 0)
        {
            [errorCheck show];
        } else {
            NSDate *inputDate = datePicker.date;
            NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
            [dateFormat setDateFormat:@"cccc, MMM d, hh:mm aa"];
            NSString *dateString = [dateFormat stringFromDate:inputDate];
            
            NSString *eventAndDate = [NSString stringWithFormat:@"New Event: %@\n%@\n\n",eventField.text,dateString];
            [delegate DidEnd:eventAndDate];
            
        }
    }
    [self dismissModalViewControllerAnimated:YES];
}
*/

-(void)onSwipe: (UISwipeGestureRecognizer*)recognizer
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
        if(delegate != nil)
        {
            if(eventField.text.length == 0)
            {
                [errorCheck show];
            }else{
                NSDate *inputDate = datePicker.date;
                NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
                [dateFormat setDateFormat:@"cccc, MMM d, hh:mm aa"];
                NSString *dateString = [dateFormat stringFromDate:inputDate];
                
                NSString *eventAndDate = [NSString stringWithFormat:@"New Event: %@\n%@\n\n",eventField.text,dateString]; 
                [delegate DidEnd:eventAndDate];
            }
            [self dismissModalViewControllerAnimated:YES];
        }
}    


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(void)viewDidAppear:(BOOL)animated
{
    NSDate *todaysDate = [NSDate date];
    datePicker.minimumDate=todaysDate;
    errorCheck = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Enter an event please" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLeft addGestureRecognizer:leftSwiper];
    
    [super viewDidAppear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
