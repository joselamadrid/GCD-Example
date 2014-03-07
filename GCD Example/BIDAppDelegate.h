//
//  BIDAppDelegate.h
//  GCD Example
//
//  Created by Josemac on 13.03.13.
//  Copyright (c) 2013 Jose. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BIDAppDelegate : NSObject <NSApplicationDelegate> 

@property (assign) IBOutlet NSWindow *window;
@property (strong, nonatomic) IBOutlet NSTextField *resultLabel;
-(IBAction)buttonCalculateClick:(id) sender;
-(void)abc;
@end
