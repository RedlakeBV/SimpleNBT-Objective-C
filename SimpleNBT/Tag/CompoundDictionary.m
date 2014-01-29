//
//  CompoundMap.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "CompoundDictionary.h"
#import "Tag.h"

@implementation CompoundDictionary

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (id)initWithInitialCompoundDict:(CompoundDictionary*)initialDictionary;
{
    self = [super init];
    if (self) {
        _map = [initialDictionary map];
        _reverse = [initialDictionary reverse];
        _sort = [initialDictionary sort];
    }
    return self;
}

- (id)initWithInitialCompoundDict:(CompoundDictionary*)initialDictionary usesSort:(BOOL) sort andWantsReverse:(BOOL)reverse
{
    self = [super init];
    if (self) {
        if(reverse)
        [self setSort: YES];
        else
        [self setSort: sort];
        [self setReverse: reverse];
        
        if(!sort) {
            _map = [[CHOrderedDictionary alloc] init];
        } else {
            _map = [[CHSortedDictionary alloc] init];
        }
        
        if(initialDictionary) {
            for(Tag * t in [initialDictionary map]) {
                [_map setObject:t forKey:[t name]];
            }
        }
    }
    return self;
}

-(BOOL)isEqual:(CompoundDictionary*)object {
    if(![object isKindOfClass: [CompoundDictionary class]]) return NO;
    if([(CHMutableDictionary*)[self map] count] != [(CHMutableDictionary*)[object map] count]) return NO;
    
    NSEnumerator * thisCD;
    if(_sort && _reverse)
        thisCD = [(CHSortedDictionary*)[self map] reverseKeyEnumerator];
    else
        thisCD = [(CHMutableDictionary*)[self map] keyEnumerator];
    
    NSEnumerator * otherCD;
    if(_sort && _reverse)
        otherCD = [(CHSortedDictionary*)[self map] reverseKeyEnumerator];
    else
        otherCD = [(CHMutableDictionary*)[self map] keyEnumerator];
    
    
    for(NSString *aKey in thisCD) {
        Tag * tag1 = [[self map] objectForKey:aKey];
        Tag * tag2 = [[self map] objectForKey:aKey];
        if(!tag1 || !tag2 || ![tag1 isEqual:tag2]) {
            return  NO;
        }
    }
    return YES;
}

@end
