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
    NSDictionary * BY_CLASS;
    NSDictionary * BY_NAME;
    NSArray * BY_ID;
}

+(id)shared;

-(TagType)typeByClass:(Class)tagClass;
-(TagType)typeByName:(NSString*)tagName;
-(TagType)getById:(NSInteger)tagId;

-(NSString*)typeNameByClass:(Class)tagClass;

@end
