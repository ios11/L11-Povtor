//
//  Post.h
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject

@property (nonatomic, readonly, copy) NSString *text;
@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, copy) NSString *subtitle;
@property (nonatomic, readonly, copy) NSURL *imageURL;
@property (nonatomic, readonly, copy) NSDate *createdDate;
@property (nonatomic, readonly, copy) NSDate *updatedDate;
@property (nonatomic, readonly, copy) NSString *authorName;
@property (nonatomic, readonly, copy) NSString *authorEmail;
@property (nonatomic, readonly, copy) NSString *authorAvatar;
@property (nonatomic, readonly) NSUInteger likesCount;
@property (nonatomic, readonly) NSUInteger repostsCount;

@end
