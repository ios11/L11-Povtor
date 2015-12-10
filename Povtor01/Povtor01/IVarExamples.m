//
//  IVarExamples.m
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import <Foundation/Foundation.h>

// .h

@interface MyCollection : NSObject

@property (nonatomic, readonly, copy) NSArray *items;

- (void)addItem:(id)item;

@end

// .m

@implementation MyCollection {
    NSMutableArray *_items;
}

- (NSArray *)items {
    return [_items copy];
}

- (void)addItem:(id)item {
    [_items addObject:item];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"items: ivar=%@", _items];
    return [NSString stringWithFormat:@"items: ivar=%@", self->_items];
    return [NSString stringWithFormat:@"items: property=%@", self.items];
    return [NSString stringWithFormat:@"items: ivar=%@", (*self)._items];
}

@end