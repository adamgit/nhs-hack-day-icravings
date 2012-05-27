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

+(void) load
{
	NSUserDefaults* d = [NSUserDefaults standardUserDefaults];
	totalPoints = [d integerForKey:kTotalPoints];
}

+(void) adjustPoints:(int) delta
{
	totalPoints += delta;
	
	NSUserDefaults *d = [NSUserDefaults standardUserDefaults];
	[d setInteger:totalPoints forKey:kTotalPoints];
	[d synchronize];
}

+(int) totalPoints
{
	return totalPoints;
}

@end
