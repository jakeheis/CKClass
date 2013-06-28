//
//  CKSecondViewController.m
//  CKClassDemo
//
//  Created by Jake Heiser on 6/28/13.
//  Copyright (c) 2013 jakeheiser. All rights reserved.
//

#import "CKSecondViewController.h"
#import "CKClassManager.h"

@interface CKSecondViewController ()

@end

@implementation CKSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [CKClassManager applyClass:@"header-label" toView:[self headerLabel]];
    [CKClassManager applyClass:@"body-label" toView:[self bodyLabel]];
    [CKClassManager applyClass:@"button" toView:[self anotherButton]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
