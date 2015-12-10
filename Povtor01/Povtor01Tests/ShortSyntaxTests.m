//
//  ShortSyntaxTests.m
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import <XCTest/XCTest.h>


// .h

@interface MyShortCollection : NSObject

@property (nonatomic, readonly, copy) NSArray *items;

- (void)addItem:(id)item;
- (id)itemAtIndex:(NSUInteger)index;

@end

// .m

@implementation MyShortCollection {
    NSMutableArray *_items;
}

- (instancetype)init {
    if (self = [super init]) {
        _items = [NSMutableArray array];
//        _items = [@[] mutableCopy];
    }
    return self;
}

- (void)addItem:(id)item {
    [_items addObject:item];
}

- (id)itemAtIndex:(NSUInteger)index {
    return [_items objectAtIndex:index];
    return _items[index];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"items: ivar=%@", _items];
}

#pragma mark -

- (id)objectAtIndexedSubscript:(NSUInteger)index {
    return _items[index];
}

@end


@interface ShortSyntaxTests : XCTestCase

@end

@implementation ShortSyntaxTests

- (void)testShortSyntax {
    MyShortCollection *collection = [[MyShortCollection alloc] init];
    [collection addItem:@(84)];
    [collection addItem:@[ @1, @2, @3 ]];
    [collection addItem:@{ @"x" : @"y",
                           @4   : @5 }];
    NSLog(@"%@", collection);
    NSLog(@"%@", collection[0]);

    NSArray *items = collection.items;

    NSLog(@"-- for i");

    for (NSUInteger i = 0; i < items.count; i++) {
        NSLog(@"%lu : %@", (unsigned long)i, items[i]);
    }

    NSLog(@"-- for each");

    for (id item in items) {
        NSLog(@"%@", item);
    }

    NSLog(@"-- enumerate using block");

    [items enumerateObjectsUsingBlock:^(id  _Nonnull item, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%lu : %@", (unsigned long)idx, item);
    }];
}

@end
