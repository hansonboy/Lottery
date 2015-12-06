//
//  LTHtmlViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/4.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTHtmlViewController.h"
#import "LTHelpItem.h"
@interface LTHtmlViewController ()<UIWebViewDelegate>

@property (strong,nonatomic)UIWebView *webView;
@end

@implementation LTHtmlViewController
-(UIWebView *)webView{
    if (_webView == nil) {
        _webView = [[UIWebView alloc]initWithFrame:self.view.bounds];
        _webView.backgroundColor = [UIColor redColor];
        [self.view addSubview:_webView];
        _webView.delegate = self;
    }
    return _webView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"help.html" ofType:nil];
//
//    NSURL *url = [NSURL fileURLWithPath:filePath];
    
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"help.html" withExtension:nil];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    
    
    
}
#pragma mark UIWebView Delegate
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    NSLog(@"%@--%ld",request,navigationType);
    NSLog(@"%s",__func__);
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"%s",__func__);
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"%s",__func__);
    NSLog(@"%@",self.item.id);
    NSString *jsStr = [NSString stringWithFormat:@"window.location.href = '#%@'",self.item.id];
    [webView stringByEvaluatingJavaScriptFromString:jsStr];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
   
    NSLog(@"%s",__func__);
}

-(void)dealloc{
    NSLog(@"dealloc");
}

@end
