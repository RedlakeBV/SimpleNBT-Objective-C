//
//  EndTag.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "EndTag.h"

@implementation EndTag

- (id)init
{
    self = [super initWithTagType:TagType_TAG_END];
    if (self) {
        
    }
    return self;
}

-(NSString *)description {
    return @"TAG_End";
}

-(id)copy {
    return [[EndTag alloc] init];
}

@end
