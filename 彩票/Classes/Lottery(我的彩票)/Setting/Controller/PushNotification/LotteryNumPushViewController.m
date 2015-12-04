//
//  LotteryNumPushViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/4.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LotteryNumPushViewController.h"

@interface LotteryNumPushViewController ()

@end

@implementation LotteryNumPushViewController

-(void)setupGroup{
    LTSettingGroup *group1 = [LTSettingGroup groupWithHeader:@"打开设置即可在开奖后立即收到推送消息，获知开奖号码" footer:nil];
    [group1 addItem:[LTSettingSwitchItem itemWithIcon:nil title:@"双色球"]];
    [group1 addItem:[LTSettingSwitchItem itemWithIcon:nil title:@"比分直播提醒"]];
    [self.groups addObject:group1];
}
@end
