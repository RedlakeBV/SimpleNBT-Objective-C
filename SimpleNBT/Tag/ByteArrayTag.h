//
//  ByteArrayTag.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "Tag.h"

@interface ByteArrayTag : Tag<TagDataSource>

@property Byte * value;

-(Byte*)getValue;
-(id)initWithTagName:(NSString*)tagName andValue:(Byte[])value;
-(Byte*)copyArray:(Byte*)array1;

@end
