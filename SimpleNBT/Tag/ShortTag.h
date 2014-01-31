//
//  ShortTag.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "Tag.h"

@interface ShortTag : Tag <TagDataSource>

@property (readonly) short value;

-(id)initWithTagName:(NSString*)name andValue:(short)value;

@end
