//
//  UIImage+Resizable.m
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "UIImage+Resizable.h"

@implementation UIImage (Resizable)
+(instancetype)resizableImage:(NSString *)name{
    UIImage *image = [UIImage imageNamed:name];
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(image.size.width*0.5, image.size.height*0.5, image.size.width*0.5, image.size.height*0.5) resizingMode:UIImageResizingModeStretch];
}
@end
