//
//  LTProductCollectionViewCell.m
//  彩票
//
//  Created by wangjianwei on 15/12/6.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTProductCollectionViewCell.h"
#import "Product.h"
@interface LTProductCollectionViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end
@implementation LTProductCollectionViewCell
-(void)awakeFromNib{
    [super awakeFromNib];
    
}
-(instancetype)initWithFrame:(CGRect)frame{
    return [[[NSBundle mainBundle]loadNibNamed:@"LTProductCollectionViewCell" owner:self options:nil] lastObject];
}
+(instancetype)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath*)indexPath identifer:(NSString*)identifier{

    LTProductCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"LTProductCollectionViewCell" owner:self options:nil] lastObject];
    }
    return cell;
}
-(void)setProduct:(Product *)product{
    _product = product;
    NSString *name = [product.icon substringToIndex:product.icon.length -7];
    NSLog(@"%@--%@",product.icon,name);
    self.imageView.clipsToBounds = YES;
    self.imageView.layer.cornerRadius = 10;
    self.imageView.image = [UIImage imageNamed:name];
    self.textLabel.text = product.title;
}

@end
