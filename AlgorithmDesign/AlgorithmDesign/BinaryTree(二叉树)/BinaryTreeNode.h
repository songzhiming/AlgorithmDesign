//
//  BinaryTreeNode.h
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/12.
//  Copyright © 2017年 宋志明. All rights reserved.
//

#import <Foundation/Foundation.h>
// 二叉树 结点
@interface BinaryTreeNode : NSObject

@property (nonatomic,assign) NSInteger value;

@property (nonatomic,strong) BinaryTreeNode *leftNode;

@property (nonatomic,strong) BinaryTreeNode *rightNode;


+ (instancetype)nodeWithValue:(NSInteger )value;

@end
