//
//  LongTag.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "Tag.h"

@interface LongTag : Tag <TagDataSource>

@property (readonly) long value;

-(id)initWithTagName:(NSString*)tagName andValue:(long)value;

@end
