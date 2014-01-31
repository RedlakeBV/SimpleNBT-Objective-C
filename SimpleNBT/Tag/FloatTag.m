//
//  FloatTag.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "FloatTag.h"

@implementation FloatTag

- (id)initWithTagName:(NSString*)name andValue:(float)value
{
    self = [super initWithTagType:TagType_TAG_FLOAT andTagName:name];
    if (self) {
        
    }
    return self;
}

-(float)getValue {
    return _value;
}

-(id)copy {
    return [[FloatTag alloc] initWithTagName:[self name] andValue:[self value]];
}

-(NSString *)description {
    NSString *name = [self name];
    NSString *description = @"";
    if(name && ![name isEqualToString:@""]) {
        description = [NSString stringWithFormat:@"(\"%@\")", [self name]];
    }
    return [NSString stringWithFormat:@"TAG_Float%@%@%f", description, @": ", [self value]];
}

@end
