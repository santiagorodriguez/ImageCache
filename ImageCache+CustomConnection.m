//
//  ImageCache+DelegateCallback.m
//  ImageCache
//
//  Created by Santiago Rodriguez on 10/01/14.
//  Copyright (c) 2014 Santiago Rodriguez. All rights reserved.
//

#import "ImageCache+CustomConnection.h"

@implementation ImageCache (CustomConnection)

-(void)imageForUrl:(NSString *)urlString cached:(ImageCachedBlock)cachedImage notCached:(ImageNotCachedBlock)notCachedImage{
    if ([self imageExistsInDisk:urlString]){
        cachedImage([self imageForKey:urlString]);
    }else{
         [self storeImage:notCachedImage() withKey:urlString];
    }
}

@end
