//
//  TagHelper.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShortArrayTag.h"
#import "ShortTag.h"


@interface TagHelper : NSObject {
    NSArray * typeNames;
}

+(id)shared;

-(NSString*)tagNameByType:(TagType) type;

@end
