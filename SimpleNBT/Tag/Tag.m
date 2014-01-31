//
//  Tag.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "Tag.h"

@implementation Tag

- (id)initWithTagType:(TagType)tagType
{
    self = [self initWithTagType:tagType andTagName:@""];
    return self;
}

- (id)initWithTagType:(TagType)tagType andTagName:(NSString*)tagName;
{
    self = [super init];
    if (self) {
        _type = tagType;
        _name = tagName;
    }
    return self;
}

-(NSDictionary*) copyDictionary:(NSDictionary*)dictionary {
    if (!dictionary) {
        return nil;
    }
    
    NSMutableDictionary * copiedDictionary = [[NSMutableDictionary alloc] init];
    for(id key in dictionary) {
        [copiedDictionary setValue:[dictionary objectForKey:key] forKey:key];
    }
    return copiedDictionary;
}


-(BOOL)isEqual:(Tag*)object {
    if(![object isKindOfClass: [Tag class]])
        return NO;
    if([[object name] isEqualToString:[self name]]) {
        NSString * exceptionReason = @"Cannot compare two Tags with the same name but different values for sorting";
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:exceptionReason userInfo:nil];
    } else {
        return [[self name] isEqualToString: [object name]];
    }
}

-(NSUInteger)hash {
    return [self.name hash] ^ self.type;
}

-(id)getValue {
    return nil;
}

@end
