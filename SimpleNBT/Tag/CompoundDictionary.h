//
//  CompoundMap.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHOrderedDictionary.h"
#import "CHSortedDictionary.h"

@interface CompoundDictionary : NSObject

@property (nonatomic) CHMutableDictionary * map;
@property (nonatomic) BOOL sort;
@property (nonatomic) BOOL reverse;


-(id)initWithInitialCompoundDict:(CompoundDictionary*)initialDictionary;
-(id)initWithInitialCompoundDict:(CompoundDictionary*)map usesSort:(BOOL) sort andWantsReverse:(BOOL)reverse;

@end
