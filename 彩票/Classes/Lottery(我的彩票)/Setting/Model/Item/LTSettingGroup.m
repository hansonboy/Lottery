//
//  LTSettingGroup.m
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTSettingGroup.h"

@implementation LTSettingGroup
-(NSArray *)items{
    if (_items == nil) {
        _items = [NSArray array];
    }
    return  _items;
}

+(instancetype)groupWithHeader:(NSString *)header footer:(NSString *)footer{
    LTSettingGroup *group = [[self alloc]init];
    group.header = header;
    group.footer = footer;
    return group;
}
+(instancetype)group{
    return [[self alloc]init];
}
-(void)addItem:(LTSettingItem *)item{
    if (item) {
        self.items = [self.items arrayByAddingObject:item];
    }
}

@end
