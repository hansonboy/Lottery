//
//  Product.h
//  彩票
//
//  Created by wangjianwei on 15/12/6.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property (nonatomic ,copy) NSString *title;
@property (nonatomic ,copy) NSString *id;
@property (nonatomic ,copy) NSString *url;
@property (nonatomic ,copy) NSString *icon;
@property (nonatomic ,copy) NSString *customUrl;

+(NSArray*)products;

@end
