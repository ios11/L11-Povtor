//
//  VideoPost.h
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import "Post.h"

@interface VideoPost : Post

@property (nonatomic, readonly, copy) NSURL *videoURL;

- (void)addVideoRepost;

@end
