//
//  LTSettingArrowItem.m
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTSettingArrowItem.h"
@interface LTSettingArrowItem()
@property (strong,nonatomic)UIButton *btn;
@end
@implementation LTSettingArrowItem
-(UIButton*)btn{
    if (_btn == nil) {
        _btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 44, 40)];
        [_btn setImage:[UIImage imageNamed:@"CellArrow"] forState:UIControlStateNormal];
//        _btn.enabled = NO;
//        _btn.backgroundColor = [UIColor redColor];
    }
    return _btn;
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title{
    LTSettingArrowItem *item = [[self alloc]init];
    item.icon = icon;
    item.title = title;
    item.view = item.btn;
    return item;
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title option:(CallBack)option{
    LTSettingArrowItem *item = [super itemWithIcon:icon title:title option:option];
    item.view = item.btn;
    return item;
}
@end
