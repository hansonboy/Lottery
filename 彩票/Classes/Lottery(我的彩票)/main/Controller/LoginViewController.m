//
//  LoginViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/3.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LoginViewController.h"
#import "UIImage+Resizable.h"
#import "LTSettingTableViewController.h"
@interface LoginViewController ()<UINavigationBarDelegate>
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@end

@implementation LoginViewController
- (IBAction)clickBtn:(UIBarButtonItem *)sender {
    LTSettingTableViewController *setting = [[LTSettingTableViewController alloc]init];
    [self.navigationController pushViewController:setting animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.loginBtn setBackgroundImage:[UIImage resizableImage:@"RedButton"] forState:UIControlStateNormal];
    [self.loginBtn setBackgroundImage:[UIImage resizableImage:@"RedButtonPressed"] forState:UIControlStateHighlighted];
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

@end
