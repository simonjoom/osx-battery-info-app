//
//  AppDelegate.m
//  BatteryInfoApp
//
//  Created by Jacek Elczyk on 29/05/2012.
//  Copyright (c) 2012 progsign.net. All rights reserved.
//

#import "AppDelegate.h"
#import "IOKitPowerSourceInfo.h"
#import "IORegPowerSourceInfo.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize textField = _textField;
@synthesize iokitpsi = _iokitpsi;
@synthesize ioregpsi = _ioregpsi;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [self setIokitpsi:[[IOKitPowerSourceInfo alloc] init]];
    [self setIoregpsi:[[IORegPowerSourceInfo alloc] init]];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}

- (IBAction)getIOKitInfo:(id)sender {
    [self.textField setString:[[[self iokitpsi] getPowerSourceInfoFor:0] stringValue]];
}

- (IBAction)getIORegInfo:(id)sender {
    [self.textField setString:[[[self ioregpsi] getPowerSourceInfo] stringValue]];
}
@end
