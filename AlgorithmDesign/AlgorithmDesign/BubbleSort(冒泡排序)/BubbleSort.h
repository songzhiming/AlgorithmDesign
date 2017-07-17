//
//  BubbleSort.h
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/17.
//  Copyright © 2017年 宋志明. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BubbleSort : NSObject

// 两两一一比较，第一趟 最值 到 最后面,
+ (NSMutableArray *)bubbleSort:(NSMutableArray *)array;

@end
