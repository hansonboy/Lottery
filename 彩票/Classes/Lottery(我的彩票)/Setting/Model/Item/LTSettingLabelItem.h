//
//  LTSettingLabelItem.h
//  彩票
//
//  Created by wangjianwei on 15/12/4.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTSettingItem.h"

typedef void(^LTSettingLabelItemLabelBlock) (UIButton*btn,LTSettingItem *item);
@interface LTSettingLabelItem : LTSettingItem
@property (nonatomic ,copy) LTSettingLabelItemLabelBlock labelOption;
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title option:(CallBack)option labelOption:(LTSettingLabelItemLabelBlock)labelOption;
@end
