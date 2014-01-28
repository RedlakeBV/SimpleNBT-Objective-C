//
//  LongTag.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "LongTag.h"

@implementation LongTag

- (id)initWithTagName:(NSString*)tagName andValue:(long)value
{
    self = [super initWithTagType:TagType_TAG_LONG andTagName:tagName];
    if (self) {
        _value = value;
    }
    return self;
}

-(id)getValue {
    return @(_value);
}

-(NSString *)description {
    NSString *name = [self name];
    NSString *description = @"";
    if(name && ![name isEqualToString:@""]) {
        description = [NSString stringWithFormat:@"(\"%@\")", [self name]];
    }
    return [NSString stringWithFormat:@"TAG_Long%@%@%li", description, @": ", [self value]];
}

@end
