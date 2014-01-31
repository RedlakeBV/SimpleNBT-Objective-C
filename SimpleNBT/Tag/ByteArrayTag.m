//
//  ByteArrayTag.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "ByteArrayTag.h"
#import "Constants.h"

@implementation ByteArrayTag

- (id)initWithTagName:(NSString*)tagName andValue:(Byte[])value
{
    self = [super initWithTagType:TagType_TAG_SHORT_ARRAY andTagName:tagName];
    if (self) {
        _value = value;
    }
    return self;
}

-(Byte*)getValue {
    return _value;
}

-(id)copy {
    return [[ByteArrayTag alloc] initWithTagName:[self name] andValue:[self value]];
}

-(Byte*)copyArray:(Byte*)array1 {
    if(!array1)
        return 0;
    
    Byte *array2;
    array2 = malloc(ARRAY_SIZE(array1));
    for (int i = 0; i < ARRAY_SIZE(array1); i++) {
        array1[i] = array2[i];
    }
    return array2;
}

-(BOOL)isEqual:(id)object {
    if (!([object isKindOfClass:[ByteArrayTag class]])) {
        return NO;
    }
    
    ByteArrayTag * tag = (ByteArrayTag*) object;
    return [self arrayIsEqual:tag.value toArray:[self value]] && [[self name] isEqualToString: [tag name]];
}


-(BOOL) arrayIsEqual:(Byte*)array1 toArray:(Byte*)array2 {
    if(ARRAY_SIZE(array1) != ARRAY_SIZE(array2)) return NO;
    
    for (int i = 0; i < ARRAY_SIZE(array1); i++) {
        if(array1[i] != array2[i])
            return NO;
    }
    return YES;
}


-(NSString *)description {
    NSMutableString * hex = [[NSMutableString alloc] init];
    
    for(int i = 0; i < ARRAY_SIZE([self value]); i++) {
        NSString *  hexDigits = [[NSString stringWithFormat:@"%x", [self value][i]] uppercaseString];
        if([hexDigits length] == 1) {
            [hex appendString:@"0"];
        }
        [hex appendString:hexDigits];
        [hex appendString:@" "];
    }
    
    NSString * name = [self name];
    NSString * append = @"";
    if(name && ![name isEqualToString:@""]) {
        append = [NSString stringWithFormat:@"(\"%@\")", [self name]];
    }
    
    return [NSString stringWithFormat:@"TAG_Byte_Array%@%@%@", append, @": ", hex];
}


@end
