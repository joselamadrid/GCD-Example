//
//  BIDAppDelegate.m
//  GCD Example
//
//  Created by Josemac on 13.03.13.
//  Copyright (c) 2013 Jose. All rights reserved.
//

#import "BIDAppDelegate.h"

@implementation BIDAppDelegate

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(IBAction)buttonCalculateClick:(id) sender
{
    NSInteger integerArray[10000];
    NSMutableArray *integerNSArray = [NSArray arrayWithObjects:integerArray count:10000];
    
    srandom(time(NULL));
    
    dispatch_apply(10000, dispatch_get_global_queue(0, 0), ^(size_t i) {
        integerNSArray[i] = random()%10000;
    });
}

@end
