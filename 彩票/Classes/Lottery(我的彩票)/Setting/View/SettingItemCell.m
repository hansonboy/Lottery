//
//  SettingItemCell.m
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "SettingItemCell.h"
@interface SettingItemCell()

@end
@implementation SettingItemCell


+(instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *identifier = @"SettingItemCell";
    SettingItemCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if(cell == nil){
        cell = [[SettingItemCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        
        UIView *selectedBackgroundView = [[UIView alloc]initWithFrame:cell.bounds];
        selectedBackgroundView.backgroundColor = colorWith(237, 233, 218);
        cell.selectedBackgroundView = selectedBackgroundView;
        
    }
    return cell;
}
-(void)setItem:(LTSettingItem *)item{
    _item = item;
    self.imageView.image = [UIImage imageNamed:item.icon];
    self.textLabel.text = item.title;
    self.accessoryView = item.view;
}

@end
