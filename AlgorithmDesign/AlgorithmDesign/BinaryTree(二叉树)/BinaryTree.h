//
//  BinaryTree.h
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/12.
//  Copyright © 2017年 宋志明. All rights reserved.
//

/**********************************************二叉树*****************************************************
                            A
                        B       C
                      D   E   F   G
 *********************************************************************************************************/
#import <Foundation/Foundation.h>


@class BinaryTreeNode;
//http://baike.baidu.com/link?url=OFilF37M4bxUZ82go6lyD7iCFJq0TU6_06xzJ17TUJk9S-EJHq3r4eJ-nYxgZzZLcy2qV93dF6q2x1PORnGo0PFS7uTyUA79ecyjDM3kUdLDV5i8CmmVTwt9L64WfopO
@interface BinaryTree : NSObject

// 创建二叉树
+ (BinaryTreeNode *)createTreeWithValues:(NSArray *)values;
// 反转二叉树  递归
+ (BinaryTreeNode *)reserveBinaryTree:(BinaryTreeNode *)rootNode;
// 反转二叉树  非递归
+ (BinaryTreeNode *)reserveBinaryTreeWithoutRecursive:(BinaryTreeNode *)rootNode;
// 二叉树深度
+ (NSInteger)depathOfBinaryTree:(BinaryTreeNode *)rootnode;
// 二叉树结点个数
+ (NSInteger)numberOfBinaryTree:(BinaryTreeNode *)rootNode;
// 二叉树中某个节点到根节点的路径
+ (NSArray *)pathOfTreeNode:(BinaryTreeNode *)treeNode inTree:(BinaryTreeNode *)rootNode;

//
// 先序遍历  首先访问根，再先序遍历左（右）子树，最后先序遍历右（左）子树
+ (void)treeFirstInformationWithNode:(BinaryTreeNode *)rootNode resultBlock:(void (^)(NSInteger value))block;
// 中序遍历  首先中序遍历左（右）子树，再访问根，最后中序遍历右（左）子树
+ (void)treeMiddleInfomationWithNode:(BinaryTreeNode *)rootNode resultBlock:(void (^)(NSInteger value))block;
// 后序遍历  首先后序遍历左（右）子树，再后序遍历右（左）子树，最后访问根
+ (void)treeLastInformationWithNode:(BinaryTreeNode *)rootNode resultBlock:(void (^)(NSInteger value))block;
@end
