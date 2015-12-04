//
//  SettingItemCell.h
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LTSettingItem.h"
@interface SettingItemCell : UITableViewCell

@property (strong,nonatomic)LTSettingItem *item;

+(instancetype)cellWithTableView:(UITableView*)tableView;

@end
