//
//  PostsFactory.m
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import "PostsFactory.h"
#import "Post+Protected.h"

@implementation PostsFactory

+ (Post *)postWithJSONObject:(id)JSONObject {
    if (![JSONObject isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    NSDictionary *postDictionary = JSONObject;

    Post *post = [[Post alloc] init];
    post.text = postDictionary[@"text"];
    post.title = postDictionary[@"title"];
    post.subtitle = postDictionary[@"subtitle"];
    post.imageURL = postDictionary[@"imageURL"];
    post.createdDate = postDictionary[@"createdDate"];
    post.updatedDate = postDictionary[@"updatedDate"];
    post.authorName = postDictionary[@"authorName"];
    post.authorEmail = postDictionary[@"authorEmail"];
    post.authorAvatar = postDictionary[@"authorAvatar"];
    post.likesCount = [postDictionary[@"likesCount"] integerValue];
    post.repostsCount = [postDictionary[@"repostsCount"] integerValue];

    return post;
}

@end
