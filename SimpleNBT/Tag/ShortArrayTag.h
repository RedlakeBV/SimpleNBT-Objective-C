//
//  ShortArrayTag.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "Tag.h"

@interface ShortArrayTag : Tag<TagDataSource>

@property short * value;

-(short*)getValue;

@end
