//
//  LTSettingGroup.h
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LTSettingItem.h"
@interface LTSettingGroup : NSObject

@property (strong,nonatomic) NSString   *header;
@property (strong,nonatomic) NSArray   *items;
@property (strong,nonatomic) NSString   *footer;

-(void)addItem:(LTSettingItem*)item;
+(instancetype)groupWithHeader:(NSString*)header footer:(NSString*)footer;
+(instancetype)group;
@end
