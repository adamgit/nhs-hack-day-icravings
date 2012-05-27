//
//  VCPointsGained.m
//  iCrave
//
//  Created by adam applecansuckmybigtodger on 26/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VCPointsGained.h"

#import "Data.h"

@interface VCPointsGained ()

@end

@implementation VCPointsGained

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
	
	self.lTotalPoints.font = [UIFont fontWithName:@"VAGRoundedStd-Bold" size:30];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)viewWillAppear:(BOOL)animated
{
	[Data adjustPoints:15];
	self.lTotalPoints.text = [NSString stringWithFormat:@"%i", [Data totalPoints]];
}

@end
