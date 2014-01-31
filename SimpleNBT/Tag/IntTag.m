//
//  IntTag.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "IntTag.h"

@implementation IntTag

- (id)initWithTagName:(NSString*)name andValue:(NSInteger)value
{
    self = [super initWithTagType:TagType_TAG_INT andTagName:name];
    if (self) {
        
    }
    return self;
}

-(NSInteger)getValue {
    return _value;
}

-(id)copy {
    return [[IntTag alloc] initWithTagName:[self name] andValue:[self value]];
}

-(NSString *)description {
    NSString *name = [self name];
    NSString *description = @"";
    if(name && ![name isEqualToString:@""]) {
        description = [NSString stringWithFormat:@"(\"%@\")", [self name]];
    }
    return [NSString stringWithFormat:@"TAG_Int%@%@%li", description, @": ", (long)[self value]];
}



@end
