//
//  LTTabBar.h
//  彩票
//
//  Created by wangjianwei on 15/12/1.
//  Copyright © 2015年 JW. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LTTabBarButton,LTTabBar;
typedef void(^LTTabBarClickBlock)(NSInteger index);

@protocol LTTabBarDelegate <NSObject>

-(void)tabBar:(LTTabBar*)tabBar didSelectItemIndex:(NSInteger)index;

@end

@interface LTTabBar : UIView

@property (nonatomic,weak) id<LTTabBarDelegate> delegate;

@property (nonatomic,copy) LTTabBarClickBlock block;

-(void)addTabBarItemWithImage:(NSString *)imageName selectedImage:(NSString *)selectImage;

-(void)setSelectedBarItemIndex:(NSInteger)index;

@end
