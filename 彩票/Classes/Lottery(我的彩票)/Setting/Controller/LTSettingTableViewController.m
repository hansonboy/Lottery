//
//  LTSettingTableViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTSettingTableViewController.h"
#import "PushNotificationViewController.h"
@interface LTSettingTableViewController ()
@end

@implementation LTSettingTableViewController
-(void)setupTableView{
    self.tableView.rowHeight = 40;
    self.tableView.backgroundColor = colorWith(240, 239, 235);
    self.tableView.sectionFooterHeight = 1;
    self.tableView.sectionHeaderHeight = 25;
}
-(void)setupGroup{
    LTSettingGroup *group1 = [LTSettingGroup groupWithHeader:@"changge" footer:@"asd"];
    [group1 addItem:[LTSettingArrowItem itemWithIcon:@"MorePush" title:@"推送和提醒" option:^{
        PushNotificationViewController *pushNoti = [PushNotificationViewController controller];
        [self.navigationController pushViewController:pushNoti animated:YES];
    }]];
    [group1 addItem:[LTSettingSwitchItem itemWithIcon:@"handShake" title:@"摇一摇机选"]];
    [group1 addItem:[LTSettingSwitchItem itemWithIcon:@"sound_Effect" title:@"声音效果"]];
    
    LTSettingGroup *group2 = [LTSettingGroup groupWithHeader:@"changge" footer:@""];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreUpdate" title:@"检测新版本"]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreHelp" title:@"帮助"]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreShare" title:@"分享"]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreMessage" title:@"查看消息"]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreNetease" title:@"产品推荐"]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreAbout" title:@"关于"]];
    
    [self.groups addObject:group1];
    [self.groups addObject:group2];
}

@end
