//
//  HelpViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/4.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "HelpViewController.h"
#import "LTHelpItem.h"
#import "LTHtmlViewController.h"
@interface HelpViewController ()

@end

@implementation HelpViewController

-(void)setupGroup{
    
    LTSettingGroup *group1 = [LTSettingGroup group];
    for ( LTHelpItem *helpItem in [LTHelpItem items]) {
        LTSettingArrowItem *item = [LTSettingArrowItem itemWithIcon:nil title:helpItem.title destVcClass:nil];
         __block __weak HelpViewController *weakSelf = self;
        item.option = ^{
           LTHtmlViewController *controller = [[LTHtmlViewController alloc]init];
            controller.item = helpItem;
            controller.title = helpItem.title;
            [weakSelf.navigationController pushViewController:controller animated:YES];
        };
        [group1 addItem:item];
        NSLog(@"%@",helpItem.id);
    }
    [self.groups addObject:group1];
}
-(void)dealloc{
    NSLog(@"dealloc");
}

@end
