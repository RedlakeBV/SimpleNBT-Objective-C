//
//  Tag.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TagType.h"

@class Tag;
@protocol TagDataSource <NSObject>
@required
-(id)getValue;
-(id)copy;
@end

@interface Tag : NSObject

@property (readonly) NSString *name;
@property (readonly) TagType type;

- (id)initWithTagType:(TagType)tagType;
- (id)initWithTagType:(TagType)tagType andTagName:(NSString*)tagName;

@end
