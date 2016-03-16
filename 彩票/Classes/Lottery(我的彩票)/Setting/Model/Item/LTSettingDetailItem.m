//
//  LTSettingDetailItem.m
//  彩票
//
//  Created by wangjianwei on 15/12/7.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTSettingDetailItem.h"

@implementation LTSettingDetailItem
-(void)setSubtitle:(NSString *)subtitle{
    _subtitle = subtitle;
//    self.btn.backgroundColor = [UIColor redColor];
    CGSize size = [_subtitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.btn.titleLabel.font} context:nil].size;

    self.btn.frame = CGRectMake(0, 0, size.width+12, 44);
    self.btn.title = subtitle;
//    self.btn.imageEdgeInsets = UIEdgeInsetsMake(0, 90, 0, -10);
//    self.btn.titleEdgeInsets = UIEdgeInsetsMake(0, -110, 0, -90);
//    self.btn.titleLabel.font = [UIFont systemFontOfSize:13];
//    self.btn.titleLabel.textColor = [UIColor blackColor];
//    [self.btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    self.btn.imageView.backgroundColor = [UIColor yellowColor];
//    self.btn.titleLabel.backgroundColor = [UIColor blueColor];
}
@end
