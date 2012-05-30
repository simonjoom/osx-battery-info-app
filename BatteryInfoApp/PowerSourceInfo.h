//
//  PowerSourceInfo.h
//  BatteryInfoApp
//
//  Created by Jacek Elczyk on 30/05/2012.
//  Copyright (c) 2012 progsign.net. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PowerSourceInfo : NSObject {
    NSDictionary* powerSourceDetails;
}

@property (readonly, nonatomic) NSDictionary* powerSourceDetails;

- (id)initWithDictionary: (NSDictionary*) dictionary;
- (NSString*)stringValue;
@end
