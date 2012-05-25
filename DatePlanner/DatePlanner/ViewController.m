//
//  ViewController.m
//  DatePlanner
//
//  Created by Jennifer Johnson on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "AddEventScreen.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle



// Button to go to Save
-(IBAction)onClick:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *eventList = eventText.text;
        [defaults setObject:eventList forKey:@"myList"];
        
        [defaults synchronize];
    }
    [self alertViewFunction:@"Events were saved."];
}


//Right Swipe
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        AddEventScreen *addScreen = [[AddEventScreen alloc] initWithNibName:@"AddEvent" bundle:nil];
        if (addScreen != nil) {
            addScreen.delegate = self;
            [self presentModalViewController:addScreen animated:YES];
        }
    }
}

-(void)didEnd:(NSString*)inputString
{
    [eventArray addObject:inputString];
    
    NSMutableString *temp = [[NSMutableString alloc] init];
    for (NSString *element in eventArray)
    {
        [temp appendString:element];
    }
    eventText.text = temp;
}


- (void)viewDidLoad
{
    eventArray = [[NSMutableArray alloc] init];
    
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRight)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:rightSwiper];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *myList = [defaults objectForKey:@"myList"];
        eventText.text = myList;
        if (eventText.text.length == 0)
        {
            eventText.text = @"Add Events Below!";
        }
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:rightSwiper];

    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
