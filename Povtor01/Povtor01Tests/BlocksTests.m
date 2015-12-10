//
//  BlocksTests.m
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "EXTScope.h"

@interface MyClass : NSObject
@property (nonatomic, copy) void (^block)(void);
@end

@implementation MyClass

@end

@interface BlocksTests : XCTestCase
@end

@implementation BlocksTests

- (void)testBlockRetainCycle {
    __weak MyClass *weakObj = nil;

    @autoreleasepool {
        MyClass *obj = [[MyClass alloc] init];

        @weakify(obj);
        void (^block)(void) = ^{
            @strongify(obj);
            NSLog(@"%@", obj);
            NSLog(@"%@", obj);
            NSLog(@"%@", obj);
        };
        obj.block = block;
        
        weakObj = obj;
    }

    NSLog(@"%@", weakObj);
}

@end
