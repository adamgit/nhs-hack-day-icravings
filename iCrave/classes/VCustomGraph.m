//
//  VCustomGraph.m
//  iCrave
//
//  Created by adam applecansuckmybigtodger on 27/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VCustomGraph.h"

#import "Data.h"

#define FRACTION_HEIGHT(number, minpoints, pointsRange) ( (number.intValue - minPoints) / (float) pointsRange )

@implementation VCustomGraph

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	
	if( [[Data recentPointsValues] count] < 1 )
	{
		[@"No Graph Data" drawInRect:rect withFont:[UIFont fontWithName:@"VAGRoundedStd-Bold" size:40]];
		return;
	}
	
	CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(), [UIColor darkGrayColor].CGColor);
	NSString* text = [NSString stringWithFormat: @"Total Points: %i",[Data totalPoints]];
	[text drawInRect:CGRectMake(self.bounds.size.width-200.0, 20.0, 200.0, 40.0) withFont:[UIFont fontWithName:@"VAGRoundedStd-Bold" size:20]];
	
	CGContextTranslateCTM(UIGraphicsGetCurrentContext(), 0, self.bounds.size.height);
	CGContextScaleCTM(UIGraphicsGetCurrentContext(), 1.0, -1.0);
	
	int maxPoints = -9999999; // objc sucks
	int minPoints = 9999999; // objc sucks
	int pointsRange = 0;
	
	for( NSNumber* number in [Data recentPointsValues] )
	{
		if( number.intValue > maxPoints )
			maxPoints = number.intValue;
		
		if( number.intValue < minPoints )
			minPoints = number.intValue;
	}
	pointsRange = maxPoints-minPoints;
	
	int numPoints = [[Data recentPointsValues] count];
	CGFloat xPerPoint = self.bounds.size.width / (float) numPoints;
	CGFloat yPerPoint = self.bounds.size.height / (float) (pointsRange);
	
	UIBezierPath* line = [UIBezierPath bezierPath];
	NSNumber* num = [[Data recentPointsValues] objectAtIndex:0];
	[line moveToPoint: CGPointMake(0, yPerPoint * (num.intValue - minPoints))];
	for( int i = 1; i<[[Data recentPointsValues] count]; i++ )
	{
		num = [[Data recentPointsValues] objectAtIndex:i];
		
		[line addLineToPoint:CGPointMake(xPerPoint * i, yPerPoint * (num.intValue - minPoints))];
	}
	
	CGContextSetStrokeColorWithColor(UIGraphicsGetCurrentContext(), [UIColor cyanColor].CGColor);
	line.lineWidth = 10.0;
	[line stroke];
}


@end
