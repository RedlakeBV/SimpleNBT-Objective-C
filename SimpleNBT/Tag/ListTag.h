//
//  ListTag.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "Tag.h"

@interface ListTag : Tag <TagDataSource>

@property (readonly) id tagType;
@property (readonly) NSArray * tagValue;

- (id)initWithTagName:(NSString*)tagName tagType:(id)tagType andValue:(NSArray*)value;

@end
