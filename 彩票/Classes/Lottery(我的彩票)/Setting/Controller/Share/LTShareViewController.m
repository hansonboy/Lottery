//
//  LTShareViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/5.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTShareViewController.h"

@interface LTShareViewController ()

@end

@implementation LTShareViewController

-(void)setupGroup{
    LTSettingGroup *group1 = [LTSettingGroup group];
    [group1 addItem:[LTSettingArrowItem itemWithIcon:@"WeiboSina" title:@"新浪分享" option:^{

        
    }]];
    [group1 addItem:[LTSettingArrowItem itemWithIcon:@"SmsShare" title:@"短信分享" option:^{
        
    }]];
    [group1 addItem:[LTSettingArrowItem itemWithIcon:@"MailShare" title:@"邮件分享" option:^{
        
    }]];
    [self.groups addObject:group1];
}
@end
