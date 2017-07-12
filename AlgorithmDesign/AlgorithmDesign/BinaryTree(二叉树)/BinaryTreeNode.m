//
//  BinaryTreeNode.m
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/12.
//  Copyright © 2017年 宋志明. All rights reserved.
//

#import "BinaryTreeNode.h"

@implementation BinaryTreeNode

+ (instancetype)nodeWithValue:(NSInteger)value
{
    BinaryTreeNode *node = [[BinaryTreeNode alloc]init];
    node.value = value;
    return node;
}

@end
