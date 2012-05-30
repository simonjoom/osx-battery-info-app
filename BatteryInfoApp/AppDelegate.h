//
//  AppDelegate.h
//  BatteryInfoApp
//
//  Created by Jacek Elczyk on 29/05/2012.
//  Copyright (c) 2012 progsign.net. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class IORegPowerSourceInfo;
@class IOKitPowerSourceInfo;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (unsafe_unretained) IBOutlet NSTextView *textField;

@property (strong) IORegPowerSourceInfo* ioregpsi;
@property (strong) IOKitPowerSourceInfo* iokitpsi;

- (IBAction)getIOKitInfo:(id)sender;
- (IBAction)getIORegInfo:(id)sender;

@end
