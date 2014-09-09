//
//  AppDelegate.m
//  Joshua Meier
//
//  Created by Joshua Meier on 4/9/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import "AppDelegate.h"
#import "LauncherViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    LauncherViewController *launcherViewController = [[LauncherViewController alloc] init];
   
    UINavigationController *navCon = [[UINavigationController alloc] initWithRootViewController:launcherViewController];

    self.window.rootViewController = navCon;
    [self.window makeKeyAndVisible];
    return YES;
}

/*
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //UIImage *navBarImage = [UIImage imageNamed:@"navbar-normal.png"];
    //[[UINavigationBar appearance] setBackgroundImage:navBarImage forBarMetrics:UIBarMetricsDefault];
    //[[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:(51.0/255.0) green:(51.0/255.0) blue:(51.0/255.0) alpha:1]];

    //MediaViewController *educationVC = [[MediaViewController alloc] init];
    
    ExperienceHolderViewController *experienceHolderViewController = [[ExperienceHolderViewController alloc] initWithJoshExperience];
    
    UIPageViewController *pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];

    [[pageViewController view] setFrame:[self.window bounds]];
    
    NSArray *viewControllers = [NSArray arrayWithObject:experienceHolderViewController.experienceVC];
    
    [pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
    pageViewController.dataSource = experienceHolderViewController;
    
    self.window.rootViewController = pageViewController;
    [self.window makeKeyAndVisible];
    return YES;
}
*/
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
