//
//  ShortArrayTag.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "ShortArrayTag.h"
#import "Constants.h"

@implementation ShortArrayTag

- (id)initWithTagName:(NSString*)tagName andValue:(short[])value
{
    self = [super initWithTagType:TagType_TAG_SHORT_ARRAY andTagName:tagName];
    if (self) {
        _value = value;
    }
    return self;
}

-(short*)getValue {
    return _value;
}

-(id)copy {
    return [[ShortArrayTag alloc] initWithTagName:[self name] andValue:[self value]];
}

-(short*)copyArray:(short*)array1 {
    if(!array1)
        return 0;
    
    short *array2;
    array2 = malloc(ARRAY_SIZE(array1));
    for (int i = 0; i < ARRAY_SIZE(array1); i++) {
        array1[i] = array2[i];
    }
    return array2;
}

-(BOOL)isEqual:(id)object {
    if (!([object isKindOfClass:[ShortArrayTag class]])) {
        return NO;
    }
    
    ShortArrayTag * tag = (ShortArrayTag*) object;
    return [self arrayIsEqual:tag.value toArray:[self value]] && [[self name] isEqualToString: [tag name]];
}


-(BOOL) arrayIsEqual:(short*)array1 toArray:(short*)array2 {
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
    
    return [NSString stringWithFormat:@"TAG_Short_Array%@%@%@", append, @": ", hex];
}

@end
