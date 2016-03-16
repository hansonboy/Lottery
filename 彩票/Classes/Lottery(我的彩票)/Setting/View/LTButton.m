//
//  LTButton.m
//  彩票
//
//  Created by wangjianwei on 15/12/7.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTButton.h"

@implementation LTButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.titleLabel.font = [UIFont systemFontOfSize:13];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        self.contentMode = UIViewContentModeCenter;
        self.imageView.contentMode = UIViewContentModeCenter;
    }
    return self;
}
-(CGRect)titleRectForContentRect:(CGRect)contentRect{
//    NSLog(@"%s",__func__);
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    CGSize size = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13]} context:nil].size;
    return CGRectMake(titleX, titleY, size.width, contentRect.size.height);
}
-(CGRect)imageRectForContentRect:(CGRect)contentRect{
//    NSLog(@"%s",__func__);
    CGFloat imageW = 12;
    CGFloat imageX = contentRect.size.width - imageW;
    CGFloat imageY = 0;
    CGFloat imageH = contentRect.size.height;
    return CGRectMake(imageX, imageY, imageW, imageH);
}
-(void)setHighlighted:(BOOL)highlighted{
    
}
-(void)setTitle:(NSString *)title{
    _title = title;
    [self setTitle:title forState:UIControlStateNormal];
}

@end
