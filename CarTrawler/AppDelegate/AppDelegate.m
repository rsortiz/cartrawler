//
//  AppDelegate.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "AppDelegate.h"
#import "CTCarListModuleBuilder.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self setupInitialViewController];
    return YES;
}

#pragma mark - Private Helpers

- (void)setupInitialViewController
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UIViewController *carListViewController = [[CTCarListModuleBuilder new] buildModule];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:carListViewController];
    
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
}


@end
