//
//  AppDelegate.m
//  安邦盟信线上订单系统
//
//  Created by oracle on 15/11/20.
//  Copyright © 2015年 sk. All rights reserved.
//

#import "AppDelegate.h"
#import "ZuoViewController.h"
#import "YouViewController.h"
#import "Chaxun.h"
#import "Denglu.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//   
//    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[[Chaxun alloc] init]];
//    ZuoViewController *leftMenuViewController = [[ZuoViewController alloc] init];
//    YouViewController *rightMenuViewController = [[YouViewController alloc] init];
//    
//    RESideMenu *sideMenuViewController = [[RESideMenu alloc] initWithContentViewController:navigationController
//                                                                    leftMenuViewController:leftMenuViewController
//                                                                   rightMenuViewController:rightMenuViewController];
//    sideMenuViewController.backgroundImage = [UIImage imageNamed:@"2.png"];
//    sideMenuViewController.menuPreferredStatusBarStyle = 1; // UIStatusBarStyleLightContent
//    sideMenuViewController.delegate = self;
//    sideMenuViewController.contentViewShadowColor = [UIColor blackColor];
//    sideMenuViewController.contentViewShadowOffset = CGSizeMake(0, 0);
//    sideMenuViewController.contentViewShadowOpacity = 0.6;
//    sideMenuViewController.contentViewShadowRadius = 12;
//    sideMenuViewController.contentViewShadowEnabled = YES;
//    self.window.rootViewController = sideMenuViewController;
//    
//    self.window.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
    return YES;
}

#pragma mark -
#pragma mark RESideMenu Delegate

- (void)sideMenu:(RESideMenu *)sideMenu willShowMenuViewController:(UIViewController *)menuViewController
{
    NSLog(@"willShowMenuViewController: %@", NSStringFromClass([menuViewController class]));
}

- (void)sideMenu:(RESideMenu *)sideMenu didShowMenuViewController:(UIViewController *)menuViewController
{
    NSLog(@"didShowMenuViewController: %@", NSStringFromClass([menuViewController class]));
}

- (void)sideMenu:(RESideMenu *)sideMenu willHideMenuViewController:(UIViewController *)menuViewController
{
    NSLog(@"willHideMenuViewController: %@", NSStringFromClass([menuViewController class]));
}

- (void)sideMenu:(RESideMenu *)sideMenu didHideMenuViewController:(UIViewController *)menuViewController
{
    NSLog(@"didHideMenuViewController: %@", NSStringFromClass([menuViewController class]));
}
@end
