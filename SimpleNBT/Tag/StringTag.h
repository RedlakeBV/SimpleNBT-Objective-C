//
//  StringTag.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "Tag.h"

@interface StringTag : Tag <TagDataSource>

@property (readonly) NSString *value;

-(id)initWithName:(NSString*)tagname andValue:(NSString*)value;

@end
