//
//  LTAboutViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/7.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTAboutViewController.h"
#import "LTSettingDetailItem.h"
@interface LTAboutViewController ()
@property (strong,nonatomic)UIView *headerView;
@end

@implementation LTAboutViewController
-(UIView *)headerView{
    if (_headerView == nil) {
        _headerView = [[[NSBundle mainBundle]loadNibNamed:@"AboutView" owner:nil options:nil] lastObject];
    }
    return _headerView;
}
-(void)setupGroup{
    LTSettingGroup *group =[LTSettingGroup group];
    [group addItem:[LTSettingArrowItem itemWithIcon:nil title:@"评分支持" option:^{
        
    }]];
    LTSettingDetailItem *item = [LTSettingDetailItem itemWithIcon:nil title:@"客服电话" option:^{
        NSString *urlStr = [NSString stringWithFormat:@"telprompt:%@",@"10086"];
        NSURL *url = [NSURL URLWithString:urlStr];
        if ([[UIApplication sharedApplication]canOpenURL:url]) {
            [[UIApplication sharedApplication]openURL:url];
        }
    }];
    item.subtitle = @"020-83568090 ";
    [group addItem:item];
    
    [self.groups addObject:group];
}
-(void)setupTableView{
//    [super setupTableView];
//    self.tableView.sectionHeaderHeight = self.headerView.bounds.size.height;
    self.tableView.rowHeight = 40;
    self.tableView.backgroundColor = colorWith(240, 239, 235);
    self.tableView.contentInset = UIEdgeInsetsMake(40, 0, 0, 0);

    self.tableView.tableHeaderView = self.headerView;
}

@end
