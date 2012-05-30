//
//  IORegPowerSourceInfo.h
//  BatteryInfoApp
//
//  Created by Jacek Elczyk on 30/05/2012.
//  Copyright (c) 2012 progsign.net. All rights reserved.
//

#import "PowerSourceInfo.h"

@interface IORegPowerSourceInfo : NSObject

- (PowerSourceInfo*)getPowerSourceInfo;

@end
