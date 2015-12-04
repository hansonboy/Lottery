//
//  DSTool.m
//  彩票
//
//  Created by wangjianwei on 15/12/4.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "DSTool.h"

@implementation DSTool
+(void)setObject:(id)object ForKey:(NSString *)key{
    [[NSUserDefaults standardUserDefaults]setObject:object forKey:key];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
+(id)objectForKey:(NSString *)key{
    return [[NSUserDefaults standardUserDefaults]objectForKey:key];
}
@end
