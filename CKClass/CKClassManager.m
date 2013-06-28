//
//  CKClassManager.m
//  CKClassDemo
//
//  Created by Jake Heiser on 6/27/13.
//  Copyright (c) 2013 jakeheiser. All rights reserved.
//

#import "CKClassManager.h"
#import "CKClass.h"

@implementation CKClassManager

+(CKClassManager *)classManager {
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}

-(id)init {
    if ((self = [super init])) {
        NSMutableDictionary *newDict = [NSMutableDictionary dictionary];
        [self setClassDictionary:newDict];
    }
    return self;
}

+(void)addClass:(CKClass *)ckclass {
    [[CKClassManager classManager] addClass:ckclass];
}

+(void)addViewClass:(void (^)(UIView *view))block forName:(NSString *)name {
    [[CKClassManager classManager] addViewClass:block forName:name];
}

+(void)applyClass:(NSString *)name toView:(UIView *)view {
    [[CKClassManager classManager] applyClass:name toView:view];
}

-(void)addClass:(CKClass *)ckclass {
    [[self classDictionary] setValue:ckclass forKey:[ckclass className]];
}

-(void)addViewClass:(void (^)(UIView *view))block forName:(NSString *)name {
    [self addClass:[CKClass classWithName:name viewBlock:block]];
}

-(void)applyClass:(NSString *)name toView:(UIView *)view {
    if (![self classExists:name])
        return;
    CKClass *ckclass = [[self classDictionary] valueForKey:name];
    CKClassViewBlock block = [ckclass classBlock];
    if (block)
        block(view);
}

-(BOOL)classExists:(NSString *)name {
    return [[self classDictionary] valueForKey:name] != nil;
}

@end
