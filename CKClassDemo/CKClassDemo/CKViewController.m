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
    
    [CKClassManager applyClass:@"header-label" toView:[self headerLabel]];
    [CKClassManager applyClass:@"body-label" toView:[self bodyLabel]];
    [CKClassManager applyClass:@"button" toView:[self nextButton]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
