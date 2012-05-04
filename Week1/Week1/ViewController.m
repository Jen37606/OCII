//
//  ViewController.m
//  Week1
//
//  Created by Jennifer Johnson on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "ShapeClass.h"
#import "SquareClass.h"
#import "TriangleClass.h"
#import "RectangleClass.h"
#import "ShapeFactory.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{

    //Triangle
    
    TriangleClass *triangle = (TriangleClass*)[ShapeFactory CreateShape:0];
    [triangle GetArea];
    textOne = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 50.0f, 300.0f, 20.0f)];
    if(textOne != nil)
        {
            textOne.backgroundColor = [UIColor clearColor];
            textOne.text = [NSString stringWithFormat:@"Shape %@ Area: %d",[triangle GetName],[triangle GetArea]];
        }
    [self.view addSubview:textOne];
       
        
        
    //Square
    
    SquareClass *square = (SquareClass*)[ShapeFactory CreateShape:1];
    [square GetArea];
    textTwo = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 100.0f, 300.0f, 20.0f)];
    if(textTwo != nil)
        {
            textTwo.backgroundColor = [UIColor clearColor];
            textTwo.text = [NSString stringWithFormat:@"Shape %@ Area: %d",[square GetName],[square GetArea]];
        }
    [self.view addSubview:textTwo];



    //Rectangle
    
    RectangleClass *rectangle = (RectangleClass*)[ShapeFactory CreateShape:2];
    [rectangle GetArea];
    textThree = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 150.0f, 300.0f, 20.0f)];
    if(textThree != nil)
        {
            textThree.backgroundColor = [UIColor clearColor];
            textThree.text = [NSString stringWithFormat:@"Shape %@ Area: %d",[rectangle GetName],[rectangle GetArea]];
        }
    [self.view addSubview:textThree];
    

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(NSString*)getText
{
    return @"hi there";
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
