//
//  CKClass.h
//  CKClassDemo
//
//  Created by Jake Heiser on 6/27/13.
//  Copyright (c) 2013 jakeheiser. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CKClassViewBlock)(UIView *v);

@interface CKClass : NSObject

@property (strong, nonatomic) NSString *className;
@property (copy, nonatomic) CKClassViewBlock classBlock;

+(CKClass *)classWithName:(NSString *)name viewBlock:(void (^)(UIView *view))block;

@end
