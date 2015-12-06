//
//  LTSettingTableViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTSettingTableViewController.h"
#import "PushNotificationViewController.h"
#import "HelpViewController.h"
#import "LTShareViewController.h"
#import "MBProgressHUD+MJ.h"
#import <Availability.h>
@interface LTSettingTableViewController ()<UIAlertViewDelegate>
@end

@implementation LTSettingTableViewController

-(void)setupGroup{
    LTSettingGroup *group1 = [LTSettingGroup group];
    [group1 addItem:[LTSettingArrowItem itemWithIcon:@"MorePush" title:@"推送和提醒" destVcClass:[PushNotificationViewController class]]];
    [group1 addItem:[LTSettingSwitchItem itemWithIcon:@"handShake" title:@"摇一摇机选" option:nil switchOption:^(UISwitch*switcher){
        NSLog(@"摇一摇机选 被选择啦--%d",switcher.on);
    }]];
    [group1 addItem:[LTSettingSwitchItem itemWithIcon:@"sound_Effect" title:@"声音效果" option:nil switchOption:^(UISwitch*switcher){
        NSLog(@"声音效果 被选择啦--%d",switcher.on);
    }]];
    
    LTSettingGroup *group2 = [LTSettingGroup group];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreUpdate" title:@"检测新版本" option:^{
        [MBProgressHUD showMessage:@"正在检测..."];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUD];
            if (iOS8Above) {
                UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:@"提示" message:@"新版本2.2" preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
                    [self dismissViewControllerAnimated:YES completion:nil];
                }];
                UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"立即更新" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
                    NSLog(@"立即更新哦...");
                }];
                [alertViewController addAction:action1];
                [alertViewController addAction:action2];
                [self presentViewController:alertViewController animated:YES completion:nil];
                
            }else{
                UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"提示" message:@"新版本2.2" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"立即更新", nil];
                [alertView show];
            }
        });
    }]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreHelp" title:@"帮助" destVcClass:[HelpViewController class]]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreShare" title:@"分享" destVcClass:[LTShareViewController class]]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreMessage" title:@"查看消息"]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreNetease" title:@"产品推荐"]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreAbout" title:@"关于"]];
    
    [self.groups addObject:group1];
    [self.groups addObject:group2];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 1) {
        NSLog(@"iOS8 以下去更新...");
    }
}
@end
