//
//  CompoundMap.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "CompoundDictionary.h"
#import "LinkedHashMap.h"
#import "MutableSortedDictionary.h"
#import "Tag.h"

@implementation CompoundDictionary

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}


- (id)initWithInitialCompoundDict:(id)initialMap usesSort:(BOOL) sort andWantsReverse:(BOOL)reverse
{
    self = [super init];
    if (self) {
        if(reverse)
            [self setSort: YES];
        else
            [self setSort: sort];
        [self setReverse: reverse];
        
        if(!sort) {
            [self setMap: [[LinkedHashMap alloc] init]];
        } else {
#warning when enumerated, if reverse is YES, it should reverse enumerate
            [self setMap:[[MutableSortedDictionary alloc] init]];
            
        }
        if(initialMap) {
            for(Tag * t in initialMap) {
                [self put: t];
            }
        }
    }
    return self;
}


-(void)put:(Tag<TagDataSource>*)tag {
    if([_map isKindOfClass: [LinkedHashMap class]]) {
        [(LinkedHashMap*)_map insertValue:tag withKey:[tag name]];
    } else if([_map isKindOfClass: [MutableSortedDictionary class]]) {
        [(MutableSortedDictionary*) _map setValue:tag forKey:[tag name]];
    }
}



@end
