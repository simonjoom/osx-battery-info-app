//
//  IORegPowerSourceInfo.m
//  BatteryInfoApp
//
//  Created by Jacek Elczyk on 30/05/2012.
//  Copyright (c) 2012 progsign.net. All rights reserved.
//

#import "IORegPowerSourceInfo.h"

@implementation IORegPowerSourceInfo

- (PowerSourceInfo*)getPowerSourceInfo {
	io_object_t deviceHandle;
	kern_return_t kernReturn;
	CFMutableDictionaryRef serviceMatch, properties;
	PowerSourceInfo* psi = nil;
	
	serviceMatch = IOServiceMatching("IOPMPowerSource");
	deviceHandle = IOServiceGetMatchingService(kIOMasterPortDefault, serviceMatch);
	kernReturn = IORegistryEntryCreateCFProperties(deviceHandle, &properties, NULL, 0);
	if(kernReturn == kIOReturnSuccess) {
		psi = [[PowerSourceInfo alloc] initWithDictionary:(__bridge NSDictionary*)properties];
	}
	CFRelease(properties);
	IOObjectRelease(deviceHandle);
	return psi;
}

@end
