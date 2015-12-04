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
#warning cell 数据模型的设计，将共有的部分抽离出来，将不同子类的共有父类抽离出来,cell 设计总类，model 设计总类，然后初始化时候根据不同的需要创建不同的子类型即可，将if-else 句型转化为对不同子类的选择
#warning 优点是：cell 只需要和模型超类打招呼即可，不需要知道模型子类的信息，充分利用了类型泛型,cell 中心类设计简单
#warning 缺点是：model子类初始化麻烦，子类需要重写超累的所有的方法

#warning itheima.com 
#warning 老师的思路是：cell设计具体化，一个cell 中几乎包含所有的UI控件具体类型，然后根据model的真实子类进行if-else 判断，进行不同的初始化操作，业务逻辑处理
#warning 优点是：简化了model的子类设计
#warning 缺点是：cell 中心类太复杂了
typedef void(^CallBack)();
@interface LTSettingItem : NSObject

@property (nonatomic ,copy) NSString *icon;
@property (nonatomic ,copy) NSString *title;
@property (nonatomic ,copy) Class destVcClass;
@property (strong,nonatomic)UIView *view;
@property (nonatomic ,copy) CallBack option;
+(instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title;
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title option:(CallBack)option;
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass;
@end
