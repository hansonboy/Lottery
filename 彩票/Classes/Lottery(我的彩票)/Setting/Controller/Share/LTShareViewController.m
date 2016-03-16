//
//  LTShareViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/5.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTShareViewController.h"
#import <MessageUI/MessageUI.h>
//#import "UMSocial.h"
@interface LTShareViewController ()<MFMessageComposeViewControllerDelegate,MFMailComposeViewControllerDelegate>

@end

@implementation LTShareViewController

-(void)setupGroup{
    LTSettingGroup *group1 = [LTSettingGroup group];
    [group1 addItem:[LTSettingArrowItem itemWithIcon:@"WeiboSina" title:@"新浪分享" option:^{
//        [UMSocialSnsService  presentSnsController:self appKey:@"566432c7e0f55a5de0007064" shareText:@"henllo" shareImage:nil shareToSnsNames:@[UMShareToSina] delegate:self];
//        [UMSocialSnsService presentSnsIconSheetView:self appKey:@"566432c7e0f55a5de0007064" shareText:@"asdf" shareImage:nil shareToSnsNames:@[UMShareToSina] delegate:self];
        
    }]];
    [group1 addItem:[LTSettingArrowItem itemWithIcon:@"SmsShare" title:@"短信分享" option:^{
        if([MFMessageComposeViewController canSendText]){
            MFMessageComposeViewController *smsController = [[MFMessageComposeViewController alloc]init];
            smsController.messageComposeDelegate = self;
            smsController.body = @"这是一个测试文本";
            smsController.recipients = @[@"18583878680"];
//            [smsController addAttachmentURL:<#(NSURL *)#> withAlternateFilename:<#(NSString *)#>]
            if([MFMessageComposeViewController canSendSubject])smsController.subject = @"asfdasfa";
            [self presentViewController:smsController animated:YES completion:nil];
        }
        
    }]]; 
    [group1 addItem:[LTSettingArrowItem itemWithIcon:@"MailShare" title:@"邮件分享" option:^{
        if ([MFMailComposeViewController canSendMail]) {
            MFMailComposeViewController *mailController = [[MFMailComposeViewController alloc]init];
            mailController.mailComposeDelegate = self;
            [mailController setSubject:@"圣诞快乐"];
            [mailController setToRecipients:@[@"jianwei2013@126.com"]];
            [mailController setCcRecipients:@[@"jianwei2013@126.com"]];
            [mailController setBccRecipients:@[@"jianwei2013@126.com"]];
            [mailController setMessageBody:@"啦啦啦啦啦啦啦啦啦啦了" isHTML:NO];
            [self presentViewController:mailController animated:YES completion:nil];
            /*
            - (void)setSubject:(NSString *)subject __OSX_AVAILABLE_STARTING(__MAC_NA,__IPHONE_3_0);
            
            - (void)setToRecipients:(NSArray *)toRecipients __OSX_AVAILABLE_STARTING(__MAC_NA,__IPHONE_3_0);
            
            - (void)setCcRecipients:(NSArray *)ccRecipients __OSX_AVAILABLE_STARTING(__MAC_NA,__IPHONE_3_0);
            
            - (void)setBccRecipients:(NSArray *)bccRecipients __OSX_AVAILABLE_STARTING(__MAC_NA,__IPHONE_3_0);
            
            - (void)setMessageBody:(NSString *)body isHTML:(BOOL)isHTML __OSX_AVAILABLE_STARTING(__MAC_NA,__IPHONE_3_0);
            
            - (void)addAttachmentData:(NSData *)attachment mimeType:(NSString *)mimeType fileName:(NSString *)filename __OSX_AVAILABLE_STARTING(__MAC_NA,__IPHONE_3_0);
            */

        }
    }]];
    [self.groups addObject:group1];
}
#pragma mark MFMessgaeComposeViewControllerDeelgate
- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{
    #define JWLog(xx, ...)  NSLog(@"%s(%d): " xx, __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
    JWLog(@"%d",result);
    [self dismissViewControllerAnimated:YES completion:nil];
}
#pragma mark MFMailComposeViewControllerDelegate
- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error __OSX_AVAILABLE_STARTING(__MAC_NA,__IPHONE_3_0){
    JWLog(@"%d",result);
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
