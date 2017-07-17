//
//  BubbleSort.m
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/17.
//  Copyright © 2017年 宋志明. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

+ (NSMutableArray *)bubbleSort:(NSMutableArray *)array
{
    for (NSInteger i = 0; i < array.count; i++) {
        for (NSInteger j = 0; j < array.count - i - 1; j++) {
            if (array[j] > array[j + 1]) {
                NSInteger tmp = [array[j] integerValue];
                array[j] = array[j+1];
                array[j + 1] = @(tmp);
            }
        }
    }
    return array;
}

@end
