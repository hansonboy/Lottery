//
//  LTSettingItem.h
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#warning 总结：
#warning cell 数据模型的设计，将共有的部分抽离出来，将不同子类的共有父类抽离出来
#warning 优点是：cell 只需要和模型超类打招呼即可，不需要知道模型子类的信息，充分利用了类型泛型
#warning 缺点是：子类初始化麻烦，子类需要重写超累的所有的方法
typedef void(^CallBack)();
@interface LTSettingItem : NSObject

@property (nonatomic ,copy) NSString *icon;
@property (nonatomic ,copy) NSString *title;
@property (nonatomic ,copy) Class destVcClass;
@property (strong,nonatomic)UIView *view;
@property (nonatomic ,copy) CallBack option;
+(instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title;
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title option:(CallBack)option;

@end
