//
//  LTNavigationController.m
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTNavigationController.h"

@interface LTNavigationController ()

@end

@implementation LTNavigationController
#pragma mark initialize 当这个类和子类第一次使用的时候调用
+(void)initialize{
    
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    navBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:17]};
    navBar.tintColor = [UIColor whiteColor];
    
    UIBarButtonItem *barBtnItem = [UIBarButtonItem appearance];
    [barBtnItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:15]} forState:UIControlStateNormal];
    [barBtnItem setTintColor:[UIColor whiteColor]];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
}
@end
