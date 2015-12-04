//
//  LTLotteryAnimationViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/4.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTLotteryAnimationViewController.h"

@interface LTLotteryAnimationViewController ()

@end

@implementation LTLotteryAnimationViewController

-(void)setupGroup{
    LTSettingGroup *group1 = [LTSettingGroup groupWithHeader:@"当您有新中奖名单，启动程序时通过动画提醒您。为避免国语频繁，高频彩不会提醒" footer:nil];
    [group1 addItem:[LTSettingSwitchItem itemWithIcon:nil title:@"中奖动画"]];
    [self.groups addObject:group1];
}

@end
