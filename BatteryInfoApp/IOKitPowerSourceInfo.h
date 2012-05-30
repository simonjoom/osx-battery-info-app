//
//  IOKitPowerSourceInfo.h
//  BatteryInfoApp
//
//  Created by Jacek Elczyk on 30/05/2012.
//  Copyright (c) 2012 progsign.net. All rights reserved.
//

#import <IOKit/ps/IOPowerSources.h>
#import "PowerSourceInfo.h"

@interface IOKitPowerSourceInfo : NSObject

- (PowerSourceInfo*)getPowerSourceInfoFor: (int)index;

@end
