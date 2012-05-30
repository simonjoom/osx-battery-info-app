//
//  PowerSourceInfo.m
//  BatteryInfoApp
//
//  Created by Jacek Elczyk on 30/05/2012.
//  Copyright (c) 2012 progsign.net. All rights reserved.
//

#import "PowerSourceInfo.h"

@implementation PowerSourceInfo

- (id)initWithDictionary:(NSDictionary *)dictionary {
    if((self = [super init]) && dictionary != nil) {
        powerSourceDetails = (__bridge NSDictionary*)CFPropertyListCreateDeepCopy(kCFAllocatorDefault, (__bridge CFDictionaryRef)dictionary, 0);
    }
    return self;
}

- (NSString*)stringValue {
    NSString* result = @"";
    NSEnumerator* keys = [powerSourceDetails keyEnumerator];
    id key;
    while(key = [keys nextObject]) {
        result = [result stringByAppendingString:[NSString stringWithFormat:@"%@ - %@\n",key,
                                                  [powerSourceDetails objectForKey:key]]];
    }
    return result;
}

@synthesize powerSourceDetails;

@end
