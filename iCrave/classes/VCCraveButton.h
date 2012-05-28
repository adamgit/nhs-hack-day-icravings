//
//  VCCraveButton.h
//  iCrave
//
//  Created by adam (license: GPL) on 26/05/2012.
//  Copyright (c) 2012 Adam Martin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "VCDefaults.h"
@interface VCCraveButton : VCDefaults

@property(nonatomic,retain) IBOutlet UILabel* lTotalPoints;

+(void) adjustPoints:(int) delta;
+(void) totalPoints;

@end
