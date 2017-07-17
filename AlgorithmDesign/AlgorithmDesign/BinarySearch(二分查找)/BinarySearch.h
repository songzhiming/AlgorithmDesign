//
//  BinarySearch.h
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/17.
//  Copyright © 2017年 宋志明. All rights reserved.
//

#import <Foundation/Foundation.h>

// 优化shijian
// 二分查找 ，必须有序，
// 已知范围min max，
// 动态算出mid
// 如果mid大于要查找的数字，max = mid － 1
// 如果mid小于要查找的数字，min = mid ＋ 1

@interface BinarySearch : NSObject

// 递归
+ (NSInteger)binarySearchWithRecursion:(NSArray *)orginalArray withKey:(NSInteger)key;
// 非递归
+ (NSInteger)binarySearchNoRecursion:(NSArray *)orginalArray withKey:(NSInteger)key;
@end
