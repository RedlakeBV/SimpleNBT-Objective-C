//
//  ShortTag.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "ShortTag.h"

@implementation ShortTag

- (id)initWithTagName:(NSString*)name andValue:(short)value
{
    self = [super initWithTagType:TagType_TAG_SHORT andTagName:name];
    if (self) {
        
    }
    return self;
}

-(NSNumber*)getValue {
    return @(_value);
}

-(id)copy {
    return [[ShortTag alloc] initWithTagName:[self name] andValue:[self value]];
}

-(NSString *)description {
    NSString *name = [self name];
    NSString *description = @"";
    if(name && ![name isEqualToString:@""]) {
        description = [NSString stringWithFormat:@"(\"%@\")", [self name]];
    }
    return [NSString stringWithFormat:@"TAG_Short%@%@%i", description, @": ", [self value]];
}

@end
