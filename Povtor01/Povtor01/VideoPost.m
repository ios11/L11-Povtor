//
//  VideoPost.m
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import "VideoPost.h"
#import "Post+Protected.h"

@implementation VideoPost

- (void)setVideoURL:(NSURL *)videoURL {
    _videoURL = [videoURL copy];
    [self renewUpdatedDate];
}

- (void)addVideoRepost {
    self.repostsCount++;
}

@end
