//
//  LTHelpItem.h
//  彩票
//
//  Created by wangjianwei on 15/12/4.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LTHelpItem : NSObject
@property (nonatomic ,copy) NSString *title;
@property (nonatomic ,copy) NSString *html;
@property (nonatomic ,copy) NSString *id;

+(NSArray*)items;

@end
