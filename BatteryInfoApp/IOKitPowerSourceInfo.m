//
//  IOKitPowerSourceInfo.m
//  BatteryInfoApp
//
//  Created by Jacek Elczyk on 30/05/2012.
//  Copyright (c) 2012 progsign.net. All rights reserved.
//

#import "IOKitPowerSourceInfo.h"

@implementation IOKitPowerSourceInfo

- (PowerSourceInfo*)getPowerSourceInfoFor: (int)index {
	CFTypeRef info = IOPSCopyPowerSourcesInfo();
	CFArrayRef sources = IOPSCopyPowerSourcesList(info);
	PowerSourceInfo* psi = nil;
	
	CFIndex numOfSources = CFArrayGetCount(sources);
	if(numOfSources == 0) {
		return nil;
	}
	CFDictionaryRef source = IOPSGetPowerSourceDescription(info, CFArrayGetValueAtIndex(sources, index));
	psi = [[PowerSourceInfo alloc] initWithDictionary:(__bridge NSDictionary*)source];
	
	CFRelease(sources);
	CFRelease(info);
	
	return psi;
}

@end
