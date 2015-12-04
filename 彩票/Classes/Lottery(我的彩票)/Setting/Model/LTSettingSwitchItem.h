//
//  LTSettingSwitchItem.h
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTSettingItem.h"
typedef void(^LTSettingSwitchItemOption)(UISwitch *sender);
@interface LTSettingSwitchItem : LTSettingItem

@property (copy,nonatomic)LTSettingSwitchItemOption switchOption;

+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title option:(CallBack)option switchOption:(LTSettingSwitchItemOption)switchOption;
@end
