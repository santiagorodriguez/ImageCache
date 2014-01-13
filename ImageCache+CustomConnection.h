//
//  ImageCache+DelegateCallback.h
//  ImageCache
//
//  Created by Santiago Rodriguez on 10/01/14.
//  Copyright (c) 2014 Santiago Rodriguez. All rights reserved.
//

#import "ImageCache.h"

@interface ImageCache (CustomConnection)
typedef void(^ImageCachedBlock)(UIImage* imageCached);
typedef UIImage* (^ImageNotCachedBlock)();

-(void)imageForUrl:(NSString*)urlString cached: (ImageCachedBlock)cachedImage notCached:(ImageNotCachedBlock)notCachedImage;


@end
