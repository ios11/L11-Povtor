//
//  Post.m
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import "Post.h"
#import "Post+Protected.h"

@interface Post ()

@property (nonatomic) NSInteger b;

@end

@implementation Post

- (void)a {

}

@end

@implementation Post (Protected)

- (void)renewUpdatedDate {
    self.updatedDate = [NSDate date];
}

@end
