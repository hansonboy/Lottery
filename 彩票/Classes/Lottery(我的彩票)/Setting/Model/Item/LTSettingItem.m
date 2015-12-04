//
//  LTSettingItem.m
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTSettingItem.h"

@implementation LTSettingItem
-(instancetype)init{
    if (self = [super init ]) {
    
    }
    return self;
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title{
    LTSettingItem *item = [[self alloc]init];
    item.icon = icon;
    item.title = title;
    return item;
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title option:(CallBack)option{
    LTSettingItem *item = [self itemWithIcon:icon title:title];
        item.option = option;
    return item;
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass{
    LTSettingItem *item = [self itemWithIcon:icon title:title];
    item.destVcClass = destVcClass;
    return item;
}
@end
