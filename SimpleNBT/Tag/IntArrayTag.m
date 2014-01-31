//
//  IntArrayTag.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "IntArrayTag.h"
#import "Constants.h"

@implementation IntArrayTag

- (id)initWithTagName:(NSString*)tagName andValue:(int[])value
{
    self = [super initWithTagType:TagType_TAG_SHORT_ARRAY andTagName:tagName];
    if (self) {
        _value = value;
    }
    return self;
}

-(int*)getValue {
    return _value;
}

-(id)copy {
    return [[IntArrayTag alloc] initWithTagName:[self name] andValue:[self value]];
}

-(int*)copyArray:(int*)array1 {
    if(!array1)
        return 0;
    
    int *array2;
    array2 = malloc(ARRAY_SIZE(array1));
    for (int i = 0; i < ARRAY_SIZE(array1); i++) {
        array1[i] = array2[i];
    }
    return array2;
}

-(BOOL)isEqual:(id)object {
    if (!([object isKindOfClass:[IntArrayTag class]])) {
        return NO;
    }
    
    IntArrayTag * tag = (IntArrayTag*) object;
    return [self arrayIsEqual:tag.value toArray:[self value]] && [[self name] isEqualToString: [tag name]];
}


-(BOOL) arrayIsEqual:(int*)array1 toArray:(int*)array2 {
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
    
    return [NSString stringWithFormat:@"TAG_Int_Array%@%@%@", append, @": ", hex];
}



@end
