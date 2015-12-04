//
//  LTSettingItem.h
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void(^CallBack)();
@interface LTSettingItem : NSObject

@property (nonatomic ,copy) NSString *icon;
@property (nonatomic ,copy) NSString *title;

@property (strong,nonatomic)UIView *view;
@property (nonatomic ,copy) CallBack option;
+(instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title;
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title option:(CallBack)option;
@end
