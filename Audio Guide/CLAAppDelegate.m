//
//  CAGAppDelegate.m
//  Audio Guide
//
//  Created by Waqar Malik on 11/18/13.
//  Copyright (c) 2013 Crimson Research, Inc. All rights reserved.
//

#import "CLAAppDelegate.h"
#import "CLACommon.h"
#import "CLALeftMenuViewController.h"
#import "CLAMapViewController.h"

@interface CLAAppDelegate () <PKRevealing>
@property (strong, nonatomic) PKRevealController *revealController;
@property (strong, nonatomic) UINavigationController *rootViewController;
@end

@implementation CLAAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    CLALeftMenuViewController *left = [[CLALeftMenuViewController alloc] initWithNibName:@"CLALeftMenuView" bundle:[NSBundle mainBundle]];
    UIStoryboard *mapStoryBoard = [UIStoryboard storyboardWithName:@"CLAMapView" bundle:[NSBundle mainBundle]];
    self.rootViewController = [mapStoryBoard instantiateInitialViewController];
    self.revealController = [PKRevealController revealControllerWithFrontViewController:self.rootViewController leftViewController:left];
    self.revealController.delegate = self;
    self.window.rootViewController = self.revealController;

    [self.window makeKeyAndVisible];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
