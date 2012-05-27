//
//  VCCraveButton.m
//  iCrave
//
//  Created by adam applecansuckmybigtodger on 26/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VCCraveButton.h"

#import "Data.h"
#import "VCSecretControls.h"

@interface VCCraveButton ()

@end

@implementation VCCraveButton

@synthesize lTotalPoints;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	UITapGestureRecognizer* gr;
	gr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(twoFingerTapped:)];
	gr.numberOfTouchesRequired = 2;
	
	[self.view addGestureRecognizer:gr];
}


	
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)viewWillAppear:(BOOL)animated
{
	self.lTotalPoints.text = [NSString stringWithFormat:@"%i", [Data totalPoints]];
	
	UIFont* f = [UIFont fontWithName:@"VAGRoundedStd-Bold" size:25];
	
	self.lTotalPoints.font = f;
}

-(void) twoFingerTapped:(UIGestureRecognizer*) recognizer
{
	VCSecretControls* nextScreen = [[VCSecretControls alloc] initWithNibName:nil bundle:nil];
	[self presentModalViewController:nextScreen animated:TRUE];
}


@end
