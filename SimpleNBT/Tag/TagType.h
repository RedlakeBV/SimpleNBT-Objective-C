//
//  Header.h
//  SimpleNBT
//
//  Created by Casper Eekhof on 28-01-14.
//  Copyright (c) 2014 Redlake. All rights reserved.
//

#ifndef SimpleNBT_Header_h
#define SimpleNBT_Header_h

typedef enum {
    TagType_TAG_END = 0,
	TagType_TAG_BYTE,
	TagType_TAG_SHORT,
	TagType_TAG_INT,
	TagType_TAG_LONG,
	TagType_TAG_FLOAT,
	TagType_TAG_DOUBLE,
	TagType_TAG_BYTE_ARRAY,
	TagType_TAG_STRING,
	TagType_TAG_LIST,
	TagType_TAG_COMPOUND,
	TagType_TAG_INT_ARRAY,
	TagType_TAG_SHORT_ARRAY = 100
} TagType;


#endif
