//
//  AppDelegate.m
//  Weekend
//
//  Created by scjy on 16/1/4.
//  Copyright © 2016年 scjy. All rights reserved.
//

#import "AppDelegate.h"
#import "zhuyeViewController.h"
#import "faxianViewController.h"
#import "meViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    UITabBarController *tabBarVc = [UITabBarController new];
//主页
    UIStoryboard *zhuyeStoryBoard = [UIStoryboard storyboardWithName:@"zhuye" bundle:nil];
    UINavigationController *zhuyeNav = zhuyeStoryBoard.instantiateInitialViewController;
    zhuyeNav.tabBarItem.image = [UIImage imageNamed:@"53-house.png"];
    zhuyeNav.tabBarItem.title = @"主页";
 
    
// 发现
    UIStoryboard *faxianStoryBoard = [UIStoryboard storyboardWithName:@"faxian" bundle:nil];
    UINavigationController *faxianNav = faxianStoryBoard.instantiateInitialViewController;
    faxianNav.tabBarItem.image = [UIImage imageNamed:@"71-compass.png"];
    faxianNav.tabBarItem.title = @"发现";
//我的
    UIStoryboard *meStoryBoard = [UIStoryboard storyboardWithName:@"me" bundle:nil];
    UINavigationController *meNav = meStoryBoard.instantiateInitialViewController;
    meNav.tabBarItem.image = [UIImage imageNamed:@"29-heart.png"];
    meNav.tabBarItem.title = @"我的";
    
    
    
    
    
    tabBarVc.tabBar.tintColor = [UIColor colorWithRed:27/255.0f green:185/255.0f blue:189/255.0f alpha:1.0];
    
    tabBarVc.viewControllers = @[zhuyeNav,faxianNav,meNav];
    
    self.window.rootViewController = tabBarVc;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
