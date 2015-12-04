//
//  LTBaseTableViewController.h
//  彩票
//
//  Created by wangjianwei on 15/12/4.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LTSettingItem.h"
#import "LTSettingGroup.h"
#import "SettingItemCell.h"
#import "LTSettingSwitchItem.h"
#import "LTSettingArrowItem.h"
#import "LTSettingLabelItem.h"
@interface LTBaseTableViewController : UITableViewController
@property (strong,nonatomic) NSMutableArray *groups;
/**
 *  子类覆盖以下两个方法完成UITableView的定制
 */
-(void)setupGroup;
-(void)setupTableView;
+(instancetype)controller;
@end
