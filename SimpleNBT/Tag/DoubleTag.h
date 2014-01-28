//
//  DoubleTag.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "Tag.h"

@interface DoubleTag : Tag

@property (readonly) double value;

-(double)getValue;
-(id)initWithTagName:(NSString*)name andValue:(double)value;


@end
