//
//  OLAppDelegate.m
//  OLImageViewDemo
//
//  Created by Diego Torres on 9/5/12.
//  Copyright (c) 2012 Onda Labs. All rights reserved.
//

#import "OLAppDelegate.h"
#import "OLImageView.h"

@implementation OLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIViewController *viewController = [UIViewController new];
    viewController.title = @"OLImageView";
    
    UIImage *image = [OLImage imageNamed:@"logo_hash_animated-mid"];
    
    OLImageView *imageview = [[OLImageView alloc] initWithImage:image];
    imageview.center = viewController.view.center;
    imageview.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleRightMargin;
    [viewController.view addSubview:imageview];
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:viewController];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
