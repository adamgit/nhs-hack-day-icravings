//
//  VCGraph.h
//  iCrave
//
//  Created by adam (license: GPL) on 27/05/2012.
//  Copyright (c) 2012 Adam Martin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "VCustomGraph.h"

#import "VCDefaults.h"

@interface VCGraph : VCDefaults

@property(nonatomic,retain) IBOutlet VCustomGraph* graph;

-(IBAction) tappedDone:(id)sender;

@end
