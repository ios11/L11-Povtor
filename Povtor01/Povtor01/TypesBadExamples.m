//
//  TypesBadExamples.m
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import <Foundation/Foundation.h>


// Перечислите все ошибки и возможные замечания
// Как еще можно улучшить этот код?

@interface News : NSObject

@property (nonatomic, strong, nonnull) NSMutableArray *items;
@property (nonatomic, strong, nonnull) NSMutableArray *groups;
@property (assign, nullable) NSInteger *newOffset;
@property (nonatomic, strong, nullable) NSString *nextFrom;
@property (nonatomic, strong, nonnull) NSMutableArray *users;

@end

@interface Groups : NSObject

@property long groupId;
@property (nonatomic, strong, nonnull) NSString *groupName;
@property (nonatomic, strong, nonnull) NSString *groupScreenName;
@property (nonatomic, strong, nonnull) NSString *groupType;
@property int groupIsClosed;
@property (nonatomic, nonnull) NSInteger *groupIsMember;
@property (nonatomic, strong, nonnull) NSURL *photo50;

@end


