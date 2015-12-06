//
//  LTHelpItem.m
//  彩票
//
//  Created by wangjianwei on 15/12/4.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTHelpItem.h"

@implementation LTHelpItem
+(NSArray *)items{
    NSMutableArray *items  = [NSMutableArray array];
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"help.json" ofType:nil];
    NSData * data = [NSData dataWithContentsOfFile:filePath];
    NSArray* dics =  [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    NSLog(@"%@",dics);
    for (NSDictionary *dic in dics) {
        LTHelpItem *helpItem = [[self alloc]init];
        [helpItem setValuesForKeysWithDictionary:dic];
        [items addObject:helpItem];
    }
    return items;
}
@end
