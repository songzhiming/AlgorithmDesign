//
//  SwapNumber.m
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/17.
//  Copyright © 2017年 宋志明. All rights reserved.
//

#import "SwapNumber.h"

@implementation SwapNumber


+ (void)swapWithTmp:(NSInteger)a b:(NSInteger)b
{
    NSInteger tmp = a;
    a = b;
    b = tmp;
}

+ (void)swapWithAdd:(NSInteger)a b:(NSInteger)b
{
    a = a + b;
    b = a - b; //b换成a
    a = a - b; //a换成b
}

+ (void)swapWithAlsoOr:(NSInteger)a b:(NSInteger)b
{
    a = a^b;
    b = a^b;
    a = a^b;
}

+ (NSInteger)greatestCommonFactor:(NSInteger)a b:(NSInteger)b
{
    NSInteger max = 1;
    for (NSInteger i = 1; i <= b; i++) {
        if (a % i == 0 && b%i == 0) {
            max = i;
        }
    }
    return max;
}

@end
