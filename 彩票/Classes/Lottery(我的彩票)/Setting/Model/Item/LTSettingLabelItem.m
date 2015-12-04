//
//  LTSettingLabelItem.m
//  彩票
//
//  Created by wangjianwei on 15/12/4.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTSettingLabelItem.h"
@interface LTSettingLabelItem()
@property (strong,nonatomic)UIButton *rightBtn;
@end
@implementation LTSettingLabelItem
-(UIButton *)rightBtn{
    if (_rightBtn == nil) {
        _rightBtn = [[UIButton alloc]initWithFrame:CGRectMake(1000, 0, 60,44)];
        [_rightBtn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        [_rightBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        _rightBtn.backgroundColor =[ UIColor redColor];
    }
    NSString *str = [DSTool objectForKey:self.title] ;
    if (str.length == 0) {
        str = @"00:00";
    }
    [_rightBtn setTitle:str forState:UIControlStateNormal];
    return _rightBtn;
}
-(void)click:(UIButton*)btn{
    if (self.labelOption) {
        self.labelOption(self.rightBtn,self);
    }
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title{
    LTSettingLabelItem *item = [super itemWithIcon:icon title:title];
    item.view = item.rightBtn;
    return item;
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title option:(CallBack)option{
    LTSettingLabelItem *item = [super itemWithIcon:icon title:title option:option];
    item.view = item.rightBtn;
    return item;
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title option:(CallBack)option labelOption:(LTSettingLabelItemLabelBlock)labelOption{
    LTSettingLabelItem *item = [self itemWithIcon:icon title:title option:option];
    item.labelOption = labelOption;
    return item;
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass{
    LTSettingLabelItem *item = [super itemWithIcon:icon title:title destVcClass:destVcClass];
    item.view = item.rightBtn;
    return item;
}
@end
