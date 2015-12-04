//
//  LTTabBarViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/1.
//  Copyright © 2015年 JW. All rights reserved.
//

#import "LTTabBarViewController.h"
#import "LTTabBar.h"
@interface LTTabBarViewController ()<LTTabBarDelegate>

@end

@implementation LTTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    LTTabBar *tabBar = [[LTTabBar alloc]initWithFrame:self.tabBar.bounds];
    tabBar.delegate = self;
//    tabBar.block = ^(NSInteger index){
//        self.selectedIndex = index;
//    };
    [self.tabBar addSubview:tabBar];
    
    for (int i = 0 ; i<self.viewControllers.count; i++) {
        NSString *image = [NSString stringWithFormat:@"TabBar%d",i+1];
        NSString *imageSel = [NSString stringWithFormat:@"TabBar%dSel",i+1];
        [tabBar addTabBarItemWithImage:image selectedImage:imageSel];
    }
    
}

#pragma mark LTTabBarDelegate
-(void)tabBar:(LTTabBar *)tabBar didSelectItemIndex:(NSInteger)index{
    self.selectedIndex = index;
}
@end
