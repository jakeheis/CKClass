//
//  CKViewController.m
//  CKClassDemo
//
//  Created by Jake Heiser on 6/27/13.
//  Copyright (c) 2013 jakeheiser. All rights reserved.
//

#import "CKViewController.h"
#import "CKClassManager.h"

@interface CKViewController ()

@end

@implementation CKViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [CKClassManager addViewClass:^(UIView *view) {
        UILabel *label = (UILabel *)view;
        [label setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:24.0f]];
        [label setTextColor:[UIColor redColor]];
        [label setBackgroundColor:[UIColor lightGrayColor]];
    } forName:@"main-text"];
    
    [CKClassManager addViewClass:^(UIView *view) {
        UILabel *label = (UILabel *)view;
        [label setShadowColor:[UIColor colorWithWhite:0 alpha:0.3f]];
        [label setShadowOffset:CGSizeMake(1, 1)];
    } forName:@"text-shadow"];
    
    UILabel *l1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    [l1 setText:@"First label!"];
    [CKClassManager applyClass:@"main-text" toView:l1];
    
    UILabel *l2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, 320, 50)];
    [l2 setText:@"Second label!"];
    [CKClassManager applyClass:@"text-shadow" toView:l2];
    
    UILabel *l3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 320, 50)];
    [l3 setText:@"Third label!"];
    [CKClassManager applyClass:@"main-text" toView:l3];
    [CKClassManager applyClass:@"text-shadow" toView:l3];
    
    [[self view] addSubview:l1];
    [[self view] addSubview:l2];
    [[self view] addSubview:l3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
