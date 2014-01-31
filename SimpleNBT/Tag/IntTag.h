//
//  IntTag.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "Tag.h"

@interface IntTag : Tag <TagDataSource>

@property (readonly) NSInteger value;

-(NSInteger)getValue;
-(id)initWithTagName:(NSString*)name andValue:(NSInteger)value;

@end
