//
//  CKAppDelegate.m
//  CKClassDemo
//
//  Created by Jake Heiser on 6/27/13.
//  Copyright (c) 2013 jakeheiser. All rights reserved.
//

#import "CKAppDelegate.h"
#import "CKClassManager.h"

@implementation CKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self setupInitialClasses];
    
    return YES;
}

-(void)setupInitialClasses { // You can add classes at any point, I just chose to add them in the app delegate
    [CKClassManager addViewClass:^(UIView *view) {
        UILabel *header = (UILabel *)view;
        [header setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:30.0f]];
        [header setTextAlignment:NSTextAlignmentCenter];
    } forName:@"header-label"];
    
    [CKClassManager addViewClass:^(UIView *view) {
        UILabel *body = (UILabel *)view;
        [body setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:20.0f]];
        [body setTextAlignment:NSTextAlignmentLeft];
    } forName:@"body-label"];
    
    [CKClassManager addViewClass:^(UIView *view) {
        UIButton *button = (UIButton *)view;
        [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [[button titleLabel] setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:22.0f]];
    } forName:@"button"];
}

@end
