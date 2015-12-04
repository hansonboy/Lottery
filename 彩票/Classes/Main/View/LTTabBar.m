//
//  LTTabBar.m
//  彩票
//
//  Created by wangjianwei on 15/12/1.
//  Copyright © 2015年 JW. All rights reserved.
//

#import "LTTabBar.h"
#import "LTTabBarButton.h"
@interface LTTabBar()

@property (nonatomic,weak) LTTabBarButton *selectedButton;


@end

@implementation LTTabBar

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        NSLog(@"%@",_block);
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)addTabBarItemWithImage:(NSString *)imageName selectedImage:(NSString *)selectImage{
    LTTabBarButton *button = [[LTTabBarButton alloc]init];
    button.tag = self.subviews.count;
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:selectImage] forState:UIControlStateSelected];
    [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
}
-(void)clickButton:(LTTabBarButton*)btn{
    self.selectedButton.selected = NO;
    self.selectedButton = btn;
    self.selectedButton.selected = YES;
    if (self.block) {
        NSLog(@"%@",self.block);
        self.block(btn.tag);
    }
    if ([self.delegate respondsToSelector:@selector(tabBar:didSelectItemIndex:)]) {
        [self.delegate tabBar:self didSelectItemIndex:btn.tag];
    }
}
-(void)layoutSubviews{
    [super layoutSubviews];
    for (int i = 0; i< self.subviews.count; i++) {
        LTTabBarButton *btn = (LTTabBarButton*)self.subviews[i];
        CGFloat tabBarButtonW = self.bounds.size.width/self.subviews.count;
        CGFloat tabBarButtonH = self.bounds.size.height;
        CGFloat tabBarButtonX  = tabBarButtonW *i;
        CGFloat tabBarButtonY = 0;
        btn.frame = CGRectMake(tabBarButtonX, tabBarButtonY, tabBarButtonW, tabBarButtonH);
        NSLog(@"%@",NSStringFromCGRect(btn.frame));
    }
    [self setSelectedBarItemIndex:0];
    
}
-(void)setSelectedBarItemIndex:(NSInteger)index{
    if (index < self.subviews.count) {
        LTTabBarButton *btn = self.subviews[index];
        [self clickButton:btn];
    }
}
@end
