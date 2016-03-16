//
//  Product.m
//  彩票
//
//  Created by wangjianwei on 15/12/6.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "Product.h"

@implementation Product

+(NSArray *)products{
    NSMutableArray *products = [NSMutableArray array];
    NSString *filepath = [[NSBundle mainBundle]pathForResource:@"products.json" ofType:nil];
    NSData *data = [NSData dataWithContentsOfFile:filepath];
    NSArray * objects = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    for (NSDictionary *dic in objects) {
        Product *product = [[Product alloc]init];
        [product setValuesForKeysWithDictionary:dic];
        [products addObject:product];
    }
    return products;
}
@end
