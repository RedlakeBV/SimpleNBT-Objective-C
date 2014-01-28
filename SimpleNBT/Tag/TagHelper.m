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
        typeNames = @[@"TAG_End", @"TAG_Byte",
                      @"TAG_Short", @"TAG_Int",
                      @"TAG_Long", @"TAG_Float",
                      @"TAG_Double", @"TAG_Byte_Array",
                      @"TAG_String", @"TAG_List",
                      @"TAG_Compound", @"TAG_Int_Array",
                      @"TAG_Short_Array"
                      ];
    }
    return self;
}


-(NSString *)tagNameByType:(TagType)type {
    if(type == TagType_TAG_SHORT_ARRAY) type = 12;
    return [typeNames objectAtIndex: type];
}


@end
