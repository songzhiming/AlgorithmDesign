//
//  BinarySearch.m
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/17.
//  Copyright © 2017年 宋志明. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch


+ (NSInteger)binarySearchWithRecursion:(NSArray *)orginalArray withKey:(NSInteger)key;
{
    
    return [self binarySearchWithRecursion:orginalArray min:0 max:orginalArray.count key:key];
}

+ (NSInteger)binarySearchWithRecursion:(NSArray *)array
                                   min:(NSInteger)min
                                   max:(NSInteger)max
                                   key:(NSInteger)key
{
    NSInteger mid = (min + max)/2;
    if (min <= max) {
        NSInteger mid = (max + min)/2;
        if ([array[mid] integerValue] == key) {
            return mid;
        }else if ([array[mid] integerValue] > key){
            max = mid - 1;
        }else{
            min = mid + 1;
        }
        return [self binarySearchWithRecursion:array min:min max:max key:key];
    }else{
        return -1;
    }
}

+ (NSInteger)binarySearchNoRecursion:(NSArray *)orginalArray withKey:(NSInteger)key
{
    NSInteger min = 0;
    NSInteger max = orginalArray.count;
    while (min <= max) {
        NSInteger mid = (max + min)/2;
        if ([orginalArray[mid] integerValue] == key) {
            return mid;
        }else if ([orginalArray[mid] integerValue] > key){
            max = mid - 1;
        }else{
            min = mid + 1;
        }
    }
    return -1;//没有找到
}
@end
