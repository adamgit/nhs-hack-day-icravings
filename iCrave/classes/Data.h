//
//  Data.h
//  iCrave
//
//  Created by adam (license: GPL) on 27/05/2012.
//  Copyright (c) 2012 Adam Martin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject

+(void) adjustPoints:(int) delta;

+(int) totalPoints;

+(NSArray*) recentPointsValues;

@end
