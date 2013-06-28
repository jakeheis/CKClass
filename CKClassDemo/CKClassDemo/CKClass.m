//
//  CKClass.m
//  CKClassDemo
//
//  Created by Jake Heiser on 6/27/13.
//  Copyright (c) 2013 jakeheiser. All rights reserved.
//

#import "CKClass.h"

@implementation CKClass

+(CKClass *)classWithName:(NSString *)name viewBlock:(void (^)(UIView *view))block {
    CKClass *newClass = [[CKClass alloc] init];
    [newClass setClassName:name];
    [newClass setClassBlock:block];
    return newClass;
}

@end
