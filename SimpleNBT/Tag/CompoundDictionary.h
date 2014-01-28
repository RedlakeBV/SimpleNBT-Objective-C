//
//  CompoundMap.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CompoundDictionary : NSObject

@property (nonatomic) id map;
@property (nonatomic) BOOL sort;
@property (nonatomic) BOOL reverse;


-(id)initWithInitialCompoundDict:(id)map usesSort:(BOOL) sort andWantsReverse:(BOOL)reverse;

@end
