//
//  FloatTag.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "Tag.h"

@interface FloatTag : Tag <TagDataSource>

@property (readonly) float value;

-(float)getValue;
-(id)initWithTagName:(NSString*)name andValue:(float)value;

@end
