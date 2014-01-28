//
//  TagHelper.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "TagHelper.h"

@implementation TagHelper


+(id)shared {
    static id sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init
{
    self = [super init];
    if (self) {
#warning  needs to be completed before build
        NSArray * tagClasses = @[[ShortTag class]];
        BY_CLASS = @{};
        BY_NAME = @{};
        BY_ID = @[];
    }
    return self;
}

-(NSString*)typeNameByClass:(Class)tagClass {
    #warning provide lookup
    return @"";
}

-(TagType)typeByClass:(Class)tagClass {
    return TagType_TAG_END;
}

-(TagType)typeByName:(NSString*)typeName {
    return TagType_TAG_END;
}

-(TagType)getById:(NSInteger)tagId {
    return TagType_TAG_END;
}


@end
