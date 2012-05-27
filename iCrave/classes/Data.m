//
//  Data.m
//  iCrave
//
//  Created by adam applecansuckmybigtodger on 27/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Data.h"

#define kTotalPoints @"totalPoints"

@implementation Data

static int totalPoints;
static NSMutableArray* recentPoints;

+ (void) initialize {
	if ([self class] == [Data class]) {
		// Once-only initialization
		
		NSUserDefaults* d = [NSUserDefaults standardUserDefaults];
		totalPoints = [d integerForKey:kTotalPoints];
		
		recentPoints = [NSMutableArray new];
		[recentPoints addObject:[NSNumber numberWithInt:totalPoints]];
	}
	// Initialization for this class and any subclasses
}

+(void) adjustPoints:(int) delta
{
	totalPoints += delta;
	
	NSUserDefaults *d = [NSUserDefaults standardUserDefaults];
	[d setInteger:totalPoints forKey:kTotalPoints];
	[d synchronize];
	
	[recentPoints addObject:[NSNumber numberWithInt:totalPoints]];
}

+(int) totalPoints
{
	return totalPoints;
}

+(NSArray*) recentPointsValues
{
	return recentPoints;
}

@end
