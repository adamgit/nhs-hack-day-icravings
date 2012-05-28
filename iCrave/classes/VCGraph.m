//
//  VCGraph.m
//  iCrave
//
//  Created by adam (license: GPL) on 27/05/2012.
//  Copyright (c) 2012 Adam Martin. All rights reserved.
//

#import "VCGraph.h"

@interface VCGraph ()

@end

@implementation VCGraph

@synthesize graph;

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
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)tappedDone:(id)sender
{
	[self dismissModalViewControllerAnimated:TRUE];
}

@end
