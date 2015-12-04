//
//  LTScoreViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/4.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTScoreViewController.h"

@interface LTScoreViewController ()

@end

@implementation LTScoreViewController{
    UIButton *_btn;
    LTSettingItem *_item;
}

-(void)setupGroup{
    LTSettingGroup *group1 = [LTSettingGroup groupWithHeader:nil footer:@"当我关注比赛比分发送变化时，通过小弹窗或推送进行提醒"];
    
    [group1 addItem:[LTSettingSwitchItem itemWithIcon:nil title:@"提醒我关注比赛"]];
    
    LTSettingGroup *group2 = [LTSettingGroup groupWithHeader:@"只在以下时间接受比分直播" footer:nil];
    [group2 addItem:[LTSettingLabelItem itemWithIcon:nil title:@"开始时间" option:nil labelOption:^(UIButton*btn,LTSettingItem *item){
        NSLog(@"asda");
        [self setupBtn:btn item:item];
        
    }]];
    
    LTSettingGroup *group3 = [LTSettingGroup group];
    [group3 addItem:[LTSettingLabelItem itemWithIcon:nil title:@"结束时间"option:nil labelOption:^(UIButton *btn,LTSettingItem *item){
        [self setupBtn:btn item:item];
    }]];
    
    [self.groups addObject:group1];
    [self.groups addObject:group2];
    [self.groups addObject:group3];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
-(void)setupBtn:(UIButton*)btn item:(LTSettingItem*)item{
    UITextField *textField = [[UITextField alloc]init];
    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
    textField.inputView = datePicker;
    [self.view addSubview:textField];
    
    datePicker.datePickerMode = UIDatePickerModeTime;
    datePicker.locale = [NSLocale localeWithLocaleIdentifier:@"zh"];
    [datePicker addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"HH:mm";
//    [datePicker setDate:[formatter dateFromString:[DSTool objectForKey:item.title]] animated:YES];

    [textField becomeFirstResponder];
    _item =item;
    _btn = btn;
}
-(void)valueChanged:(UIDatePicker *)datePicker{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"HH:mm";
    
    NSString *dateStr = [formatter stringFromDate:datePicker.date];
    [_btn setTitle:dateStr forState:UIControlStateNormal];
    [DSTool setObject:dateStr ForKey:_item.title];

    [self.tableView reloadData];
}
@end
