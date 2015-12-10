//
//  Post+Protected.h
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import "Post.h"

@interface Post ()

@property (nonatomic, readwrite, copy) NSString *text;
@property (nonatomic, readwrite, copy) NSString *title;
@property (nonatomic, readwrite, copy) NSString *subtitle;
@property (nonatomic, readwrite, copy) NSURL *imageURL;
@property (nonatomic, readwrite, copy) NSDate *createdDate;
@property (nonatomic, readwrite, copy) NSDate *updatedDate;
@property (nonatomic, readwrite, copy) NSString *authorName;
@property (nonatomic, readwrite, copy) NSString *authorEmail;
@property (nonatomic, readwrite, copy) NSString *authorAvatar;
@property (nonatomic, readwrite) NSUInteger likesCount;
@property (nonatomic, readwrite) NSUInteger repostsCount;

@end

@interface Post (Protected)

- (void)renewUpdatedDate;

@end
