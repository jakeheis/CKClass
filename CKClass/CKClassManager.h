//
//  CKClassManager.h
//  CKClassDemo
//
//  Created by Jake Heiser on 6/27/13.
//  Copyright (c) 2013 jakeheiser. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CKClass;
@interface CKClassManager : NSObject

@property (strong, nonatomic) NSMutableDictionary *classDictionary;

+(CKClassManager *)classManager;

+(void)addClass:(CKClass *)ckclass;
+(void)addViewClass:(void (^)(UIView *view))block forName:(NSString *)name;
+(void)applyClass:(NSString *)name toView:(UIView *)view;

-(void)addClass:(CKClass *)ckclass;
-(void)addViewClass:(void (^)(UIView *view))block forName:(NSString *)name;
-(void)applyClass:(NSString *)name toView:(UIView *)view;

@end
