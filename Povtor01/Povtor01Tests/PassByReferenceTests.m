//
//  PassByReferenceTests.m
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface PassByReferenceTests : XCTestCase

@end

@implementation PassByReferenceTests

- (NSString *)doSomethingAndReturnResult {
    @autoreleasepool {
        NSString *result = [NSString stringWithFormat:@"Result: %u", 84];
        return result;
    }
}

- (void)doSomethingAndReturnResultByReference1:(NSString **)resultString {
    NSString *text = (@"Result: a"
                      "\nResult: b"
                      "\nResult: c"
                      "\n");
    [text enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
        *resultString = line;
    }];
}

- (void)doSomethingAndReturnResultByReference2:(NSString **)resultString {
    @autoreleasepool {
        NSString *result = [NSString stringWithFormat:@"Result: %u", 84];
        *resultString = result;
    }
}

- (void)doSomethingAndReturnResultByReference3:(NSString **)resultString {
    __block NSString *result;
    [@"Result: a\nResult: b\nResult: c\n" enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
        result = line;
    }];
    *resultString = result;
}

- (void)testReturnByReference {
    NSString *result = [self doSomethingAndReturnResult];
    NSLog(@"%@", result);

    NSString *result1;
    [self doSomethingAndReturnResultByReference1:&result1];
    NSLog(@"%@", result1);

    NSString *result2;
    [self doSomethingAndReturnResultByReference1:&result2];
    NSLog(@"%@", result2);

    NSString *result3;
    [self doSomethingAndReturnResultByReference1:&result3];
    NSLog(@"%@", result3);
}

@end
