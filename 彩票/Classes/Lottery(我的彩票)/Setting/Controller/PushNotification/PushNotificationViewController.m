//
//  PushNotificationViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/4.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "PushNotificationViewController.h"
#import "LotteryNumPushViewController.h"
#import "LTLotteryAnimationViewController.h"
#import "LTScoreViewController.h"

@interface PushNotificationViewController ()

@end

@implementation PushNotificationViewController

-(void)setupGroup{
    LTSettingGroup *group1 = [LTSettingGroup group];
    [group1 addItem:[LTSettingArrowItem itemWithIcon:nil title:@"开奖号码推送" destVcClass:[LotteryNumPushViewController class]]];
    [group1 addItem:[LTSettingArrowItem itemWithIcon:nil title:@"中奖动画" destVcClass:[LTLotteryAnimationViewController class]]];
    [group1 addItem:[LTSettingArrowItem itemWithIcon:nil title:@"比分直播提醒" destVcClass:[LTScoreViewController class]]];
    [group1 addItem:[LTSettingArrowItem itemWithIcon:nil title:@"购彩定时提醒" ]];
    [self.groups addObject:group1];
}

@end
