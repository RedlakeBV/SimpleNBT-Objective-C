//
//  ByteTag.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "Tag.h"

@interface ByteTag : Tag

@property (readonly) Byte value;

-(Byte)getValue;
-(BOOL)boolValue;
-(BOOL)boolValue:(id<TagDataSource>) tag;
-(id)initWithTagName:(NSString*)name andBoolValue:(BOOL)value;
-(id)initWithTagName:(NSString*)name andByteValue:(Byte)value;

@end
