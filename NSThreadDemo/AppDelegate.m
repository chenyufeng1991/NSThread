//
//  AppDelegate.m
//  NSThreadDemo
//
//  Created by chenyufeng on 5/4/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    FirstViewController *firstVC = [[FirstViewController alloc] init];
    firstVC.title = @"NSThread";
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    secondVC.title = @"测试";
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    thirdVC.title = @"通信";
    FourthViewController *fourthVC = [[FourthViewController alloc] init];
    fourthVC.title = @"子类继承";

    UINavigationController *firstNavi = [[UINavigationController alloc] initWithRootViewController:firstVC];
    UINavigationController *secondNavi = [[UINavigationController alloc] initWithRootViewController:secondVC];
    UINavigationController *thirdNavi = [[UINavigationController alloc] initWithRootViewController:thirdVC];
    UINavigationController *fourthNavi = [[UINavigationController alloc] initWithRootViewController:fourthVC];

    self.tabController = [[UITabBarController alloc] init];
    self.tabController.viewControllers = @[firstNavi,secondNavi,thirdNavi,fourthNavi];

    self.window.rootViewController = self.tabController;

    [self.window makeKeyAndVisible];

    return YES;
}

@end
