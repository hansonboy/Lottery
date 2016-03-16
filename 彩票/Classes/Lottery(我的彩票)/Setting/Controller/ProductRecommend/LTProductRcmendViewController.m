//
//  LTProductRcmendViewController.m
//  彩票
//
//  Created by wangjianwei on 15/12/6.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "LTProductRcmendViewController.h"
#import "Product.h"
#import "LTProductCollectionViewCell.h"

@interface LTProductRcmendViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (strong,nonatomic)NSArray *products;
@property (strong,nonatomic)UICollectionView *collecitonView;
@end

@implementation LTProductRcmendViewController
-(NSArray *)products{
    if (_products == nil) {
        _products = [Product products];
    }
    return _products;
}
static NSString *identifier = @"LTCollecitonViewCell";
-(UICollectionView *)collecitonView{
    if (_collecitonView == nil) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
        layout.itemSize = CGSizeMake(80, 80);
        layout.minimumLineSpacing = 5;
        layout.minimumInteritemSpacing = 0;
        layout.headerReferenceSize = CGSizeMake(self.view.bounds.size.width, 20);
        _collecitonView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
        _collecitonView.delegate = self;
        _collecitonView.dataSource = self;
        _collecitonView.backgroundColor = [UIColor whiteColor];
        [_collecitonView registerClass:[LTProductCollectionViewCell class] forCellWithReuseIdentifier:identifier];
        
        [self.view addSubview:_collecitonView];
    }
    return _collecitonView;
}
#pragma mark - UICollectionViewDataSource 
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.products.count;
}
-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    LTProductCollectionViewCell *cell = [LTProductCollectionViewCell cellWithCollectionView:collectionView indexPath:indexPath identifer:identifier];
    cell.product = self.products[indexPath.row];
    return cell;
}
#pragma mark -UICollecitonViewDelegate
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"itms://itunes.apple.com/gb/app/yi-dong-cai-bian/id391945719?mt=8"]];
//    NSString *urlStr = [NSString stringWithFormat:@""]
    Product *product = self.products[indexPath.row];
    NSString *urlStr = [NSString stringWithFormat:@"%@//%@",product.customUrl,product.id];
    NSLog(@"%@",product.url);
    UIApplication *app = [UIApplication sharedApplication];
    if ([app canOpenURL:[NSURL URLWithString:urlStr]]) {
        [app openURL:[NSURL URLWithString:urlStr]];
    }
    else{
        [app openURL:[NSURL URLWithString:product.url]];
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self collecitonView];
}

@end
