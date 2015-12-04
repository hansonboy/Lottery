//
//  LTSettingSwitchItem.m
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTSettingSwitchItem.h"

@interface LTSettingSwitchItem()
@property (strong,nonatomic)UISwitch *switcher;
@end
@implementation LTSettingSwitchItem
-(UISwitch *)switcher{
    if (_switcher == nil) {
        _switcher = [[UISwitch alloc]init];
        [_switcher addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    _switcher.on = [[NSUserDefaults standardUserDefaults]boolForKey:self.title];
    return _switcher;
}
-(void)valueChanged:(UISwitch*)sender{
    if (self.switchOption) {
        self.switchOption(sender);
    }
    [[NSUserDefaults standardUserDefaults]setBool:sender.on forKey:self.title];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title{
    LTSettingSwitchItem *item = [super itemWithIcon:icon title:title];
    item.view = item.switcher;
    return item;
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title option:(CallBack)option{
    LTSettingSwitchItem *item = [super itemWithIcon:icon title:title option:option];
    item.view = item.switcher;
    return item;
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title option:(CallBack)option switchOption:(LTSettingSwitchItemOption)switchOption{
    LTSettingSwitchItem *item = [self itemWithIcon:icon title:title option:option];
    item.switchOption = switchOption;
    return item;
}
@end
