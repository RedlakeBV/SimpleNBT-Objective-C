//
//  ByteTag.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "ByteTag.h"

@implementation ByteTag

- (id)initWithTagName:(NSString*)name andBoolValue:(BOOL)value
{
    self = [self initWithTagName:name andByteValue:(Byte) (value ? 1 : 0)];
    return self;
}

- (id)initWithTagName:(NSString*)name andByteValue:(Byte)value
{
    self = [super initWithTagType:TagType_TAG_BYTE andTagName:name];
    if (self) {
        _value = value;
    }
    return self;
}

-(Byte)getValue {
    return _value;
}

-(id)copy {
    return [[ByteTag alloc] initWithTagName:[self name] andByteValue:[self value]];
}

-(NSString *)description {
    NSString *name = [self name];
    NSString *description = @"";
    if(name && ![name isEqualToString:@""]) {
        description = [NSString stringWithFormat:@"(\"%@\")", [self name]];
    }
    return [NSString stringWithFormat:@"TAG_Byte%@%@%hhu", description, @": ", [self value]];
}

-(BOOL)boolValue {
    return _value != 0;
}

-(BOOL)boolValue:(id<TagDataSource>) tag {
    if(!tag || ![tag isKindOfClass:[ByteTag class]])return NO;
    
    return [(ByteTag*)tag boolValue];
}

@end
