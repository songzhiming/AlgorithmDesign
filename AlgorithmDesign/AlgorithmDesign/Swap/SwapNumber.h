//
//  SwapNumber.h
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/17.
//  Copyright © 2017年 宋志明. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SwapNumber : NSObject
// 中间变量
+ (void)swapWithTmp:(NSInteger)a b:(NSInteger)b;
// 加法
+ (void)swapWithAdd:(NSInteger)a b:(NSInteger)b;
// 异或  1^1 = 0  1^0 = 1 0^1 = 1 0^0 = 0  
+ (void)swapWithAlsoOr:(NSInteger)a b:(NSInteger)b;
// 求最大公约数
+ (NSInteger)greatestCommonFactor:(NSInteger)a b:(NSInteger)b;
// 最小公倍数  就是   (a*b)/最大公约数


@end
