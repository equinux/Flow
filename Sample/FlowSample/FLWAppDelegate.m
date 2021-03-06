//
//  FLWAppDelegate.m
//  FlowSample
//
//  Created by Oliver Letterer on 25.04.14.
//  Copyright (c) 2014 Sparrow-Labs. All rights reserved.
//

#import "FLWAppDelegate.h"
#import "FLWMainViewController.h"

@implementation FLWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSDictionary *dictionary = [NSUserDefaults standardUserDefaults].dictionaryRepresentation;

    for (NSString *key in dictionary) {
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    }
    [[NSUserDefaults standardUserDefaults] synchronize];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    self.window.rootViewController = [[FLWMainViewController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
