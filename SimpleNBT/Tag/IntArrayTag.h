//
//  IntArrayTag.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "Tag.h"

@interface IntArrayTag : Tag<TagDataSource>

@property int * value;

-(int*)getValue;
-(int*)copyArray:(int*)array1;
-(id)initWithTagName:(NSString*)tagName andValue:(int[])value;

@end
