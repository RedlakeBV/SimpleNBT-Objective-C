//
//  ListTag.m
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#import "ListTag.h"
#import "TagHelper.h"

@implementation ListTag

- (id)initWithTagName:(NSString*)tagName tagType:(id)tagType andValue:(NSArray*)value
{
    self = [super initWithTagType:TagType_TAG_LIST andTagName:tagName];
    if (self) {
        _tagType = tagType;
        _tagValue = value;
    }
    return self;
}

-(id)getValue {
    return _tagValue;
}

-(NSString *)description {
    NSString * name = [self name];
    NSMutableString * append = [[NSMutableString alloc] init];
    if (name && ![name isEqualToString:@""]) {
        [append appendFormat:@"%@%@%@", @"(\"" , [self name], @"\")" ];
    }
    
    NSMutableString * bldr = [[NSMutableString alloc] init];
    [bldr appendString: @"TAG_List"];
    [bldr appendString: @": "];
    [bldr appendString: [@([_tagValue count]) stringValue]];
    [bldr appendString: @" entries of type "];
    [bldr appendString: [[TagHelper shared] typeNameByClass: [_tagType class]]];
    [bldr appendString: @"\r\n{\r\n"];
    
    
    for (Tag * tag in _tagValue) {
        [bldr appendString:@"   "];
        [bldr appendString:@"   "];
        [bldr appendString: [[tag description] stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\r\n   "]];
        [bldr appendString:@"\r\n"];
    }
    [bldr appendString:@"}"];
    return bldr;
}

@end
