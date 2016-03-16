//
//  LTSettingArrowItem.m
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTSettingArrowItem.h"
@interface LTSettingArrowItem()



@end
@implementation LTSettingArrowItem

-(LTButton*)btn{
    if (_btn == nil) {
        _btn = [[LTButton alloc]initWithFrame:CGRectMake(0, 0, 12, 40)];
        [_btn setImage:[UIImage imageNamed:@"CellArrow"] forState:UIControlStateNormal];
//        _btn.enabled = NO;
//        _btn.backgroundColor = [UIColor redColor];
    }
    return _btn;
}
-(instancetype)init{
    if (self = [super init]) {
        self.view = self.btn;
    }
    return self;
}

@end
