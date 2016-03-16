//
//  LTProductCollectionViewCell.h
//  彩票
//
//  Created by wangjianwei on 15/12/6.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Product; 
@interface LTProductCollectionViewCell : UICollectionViewCell

@property (strong,nonatomic)Product *product;

@property (nonatomic ,copy) NSString *identifier;

+(instancetype)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath*)indexPath identifer:(NSString*)identifier;

@end
