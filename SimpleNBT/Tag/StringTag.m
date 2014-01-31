//
//  StringTag.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "StringTag.h"

@implementation StringTag

- (id)initWithName:(NSString*)tagName andValue:(NSString*)value
{
    self = [super initWithTagType: TagType_TAG_STRING andTagName:tagName];
    if(self) {
        _value = value;
    }
    return self;
}

-(id)getValue {
    return _value;
}

-(id)copy {
    return [[StringTag alloc] initWithName:[super name] andValue:[self value]];
}

-(NSString *)description {
    NSString *name = [self name];
    NSString *description = @"";
    if(name && ![name isEqualToString:@""]) {
        description = [NSString stringWithFormat:@"(\"%@\")", [self name]];
    }
    return [NSString stringWithFormat:@"TAG_String%@%@%@", description, @": ", [self value]];
}

@end
