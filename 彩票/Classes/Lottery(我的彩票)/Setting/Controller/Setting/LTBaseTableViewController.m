//
//  LTSettingTableViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTBaseTableViewController.h"
#import "LTSettingItem.h"
#import "LTSettingGroup.h"
#import "SettingItemCell.h"
#import "LTSettingSwitchItem.h"
#import "LTSettingArrowItem.h"

@interface LTBaseTableViewController ()


@end

@implementation LTBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupGroup];
    [self setupTableView];
}
+(instancetype)controller{
    return [[self alloc]init];
}
-(instancetype)init{
    return [super  initWithStyle:UITableViewStyleGrouped];
}
-(instancetype)initWithStyle:(UITableViewStyle)style{
    return [super initWithStyle:UITableViewStyleGrouped];
}
-(void)setupTableView{
    self.tableView.rowHeight = 40;
    self.tableView.backgroundColor = colorWith(240, 239, 235);
    self.tableView.sectionFooterHeight = 1;
    self.tableView.sectionHeaderHeight = 25;
    //    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.contentInset = UIEdgeInsetsMake(-20, 0, 0, 0);
#warning 如今存在的问题： UITableViewCell 整体靠下，上面留有空白
}
-(void)setupGroup{
    LTSettingGroup *group1 = [LTSettingGroup group];
    [group1 addItem:[LTSettingArrowItem itemWithIcon:@"MorePush" title:@"推送和提醒" option:^{
       
    }]];
    [group1 addItem:[LTSettingSwitchItem itemWithIcon:@"handShake" title:@"摇一摇机选"]];
    [group1 addItem:[LTSettingSwitchItem itemWithIcon:@"sound_Effect" title:@"声音效果"]];
    
    LTSettingGroup *group2 = [LTSettingGroup group];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreUpdate" title:@"检测新版本"]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreHelp" title:@"帮助"]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreShare" title:@"分享"]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreMessage" title:@"查看消息"]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreNetease" title:@"产品推荐"]];
    [group2 addItem:[LTSettingArrowItem itemWithIcon:@"MoreAbout" title:@"关于"]];
    
    [self.groups addObject:group1];
    [self.groups addObject:group2];
}
-(NSMutableArray *)groups{
    if (_groups == nil) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.groups.count;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    LTSettingGroup *group = self.groups[section];
    return group.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SettingItemCell *cell = [SettingItemCell cellWithTableView:tableView];
    LTSettingGroup *group = self.groups[indexPath.section];
    LTSettingSwitchItem *item = group.items[indexPath.row];
    cell.item = item;

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    LTSettingItem *item = [self.groups[indexPath.section]items][indexPath.row];
    if(item.option)item.option();
    if (item.destVcClass) {
        UIViewController *destVc = [[[item.destVcClass class]alloc]init];
        destVc.title = item.title;
        [self.navigationController pushViewController:destVc animated:YES];
    }
}
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [self.groups[section] header];
}
-(NSString*)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return [self.groups[section]footer];
}
@end
