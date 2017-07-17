//
//  SelectSort.m
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/17.
//  Copyright © 2017年 宋志明. All rights reserved.
//

#import "SelectSort.h"

@implementation SelectSort

+ (void)selectSort:(NSMutableArray *)array
{
    for (NSInteger i = 0; i < array.count - 1; i++) {
        for (NSInteger j = i + 1; j < array.count; j++) {
            if ([array[i] integerValue] > [array[j] integerValue]) {
                NSInteger temp = [array[i] integerValue];
                array[i] = array[j];
                array[j] = @(temp);
            }
        }
    }
}

@end
