//
//  PropertyAttributesTests.m
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface PropertyAttributesTests : XCTestCase

@property (nonatomic) NSArray *arrayDefault;
@property (nonatomic, copy) NSArray *arrayCopy;
@property (nonatomic, weak) NSArray *arrayWeak;
@property (nonatomic, unsafe_unretained) NSArray *arrayAssign;

@end

@implementation PropertyAttributesTests

- (void)testPropertyAttributes {
    @autoreleasepool {
//        self.arrayDefault = @[ @"a", @"b", @"c" ];
        self.arrayDefault = [@[ @"a", @"b", @"c" ] mutableCopy];
    }
    NSLog(@"%p %@", self.arrayDefault, self.arrayDefault);

    @autoreleasepool {
        self.arrayCopy = self.arrayDefault;
    }
    NSLog(@"%p %@", self.arrayCopy, self.arrayCopy);

    @autoreleasepool {
        self.arrayWeak = self.arrayDefault;
        self.arrayDefault = nil;
    }
    NSLog(@"%p %@", self.arrayWeak, self.arrayWeak);

    @autoreleasepool {
        self.arrayAssign = @[ @"d", @"e", @"f" ];
    }
    NSLog(@"%p %@", self.arrayAssign, self.arrayAssign);
}

@end
