//
//  BinaryTree.m
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/12.
//  Copyright © 2017年 宋志明. All rights reserved.
//

#import "BinaryTree.h"
#import "BinaryTreeNode.h"

@implementation BinaryTree



+ (BinaryTreeNode *)createTreeWithValues:(NSArray *)values
{
    BinaryTreeNode *root = nil;
    for (int i = 0; i < values.count; i++) {
        NSInteger value = [(NSNumber *)[values objectAtIndex:i] integerValue];
        root = [[self class]addTreeNode:root value:value];
    }
    return root;
}

+ (BinaryTreeNode *)reserveBinaryTree:(BinaryTreeNode *)rootNode
{
    if (!rootNode) {return nil;}
    if (!rootNode.leftNode && !rootNode.rightNode) {return rootNode;}
    [self reserveBinaryTree:rootNode.leftNode];
    [self reserveBinaryTree:rootNode.rightNode];
    BinaryTreeNode *temp = rootNode.leftNode;
    rootNode.leftNode = rootNode.rightNode;
    rootNode.rightNode = temp;
    return rootNode;
}


// 队列  先进先出
+ (BinaryTreeNode *)reserveBinaryTreeWithoutRecursive:(BinaryTreeNode *)rootNode
{
    if (!rootNode) {return nil;}
    if (!rootNode.leftNode && !rootNode.rightNode) {return rootNode;}
    NSMutableArray *queueArray = [NSMutableArray array];
    [queueArray addObject:rootNode];
    while (queueArray.count >0) {
        BinaryTreeNode *node = [queueArray firstObject];
        [queueArray removeObjectAtIndex:0];
        BinaryTreeNode *pLeft = node.leftNode;
        node.leftNode = node.rightNode;
        node.rightNode = pLeft;
        if (node.leftNode) {
            [queueArray addObject:node.leftNode];
        }
        if (node.rightNode) {
            [queueArray addObject:node.rightNode];
        }
    }
    return rootNode;
}

+ (NSInteger)depathOfBinaryTree:(BinaryTreeNode *)rootnode
{
    if (!rootnode) {return 0;}
    if (!rootnode.leftNode && !rootnode.rightNode) {return 1;}
    NSInteger leftDepath = [self depathOfBinaryTree:rootnode.leftNode];
    NSInteger rightDepath = [self depathOfBinaryTree:rootnode.rightNode];
    return MAX(leftDepath, rightDepath) + 1;
}


+ (NSInteger)numberOfBinaryTree:(BinaryTreeNode *)rootNode
{
    if (!rootNode) {return 0;}
    NSInteger leftNumber = [self numberOfBinaryTree:rootNode.leftNode];
    NSInteger rightNumber = [self numberOfBinaryTree:rootNode.rightNode];
    return leftNumber + rightNumber + 1;
}

+ (NSArray *)pathOfTreeNode:(BinaryTreeNode *)treeNode inTree:(BinaryTreeNode *)rootNode
{
    NSMutableArray *pathArray = [NSMutableArray array];
    [self isFoundTreeNode:treeNode inTree:rootNode routePath:pathArray];
    return pathArray;
}


// 首先访问根，再先序遍历左（右）子树，最后先序遍历右（左）子树
+ (void)treeFirstInformationWithNode:(BinaryTreeNode *)rootNode resultBlock:(void (^)(NSInteger value))block
{
    if (block) {
        block(rootNode.value);
    }
    if (rootNode.leftNode) {
        [self treeFirstInformationWithNode:rootNode.leftNode resultBlock:block];
    }
    if (rootNode.rightNode) {
        [self treeFirstInformationWithNode:rootNode.rightNode resultBlock:block];
    }
}
// 首先中序遍历左（右）子树，再访问根，最后中序遍历右（左）子树
+ (void)treeMiddleInfomationWithNode:(BinaryTreeNode *)rootNode resultBlock:(void (^)(NSInteger value))block
{
    if (rootNode.leftNode) {
        [self treeMiddleInfomationWithNode:rootNode.leftNode resultBlock:block];
    }
    if (block) {
        block(rootNode.value);
    }
    if (rootNode.rightNode) {
        [self treeMiddleInfomationWithNode:rootNode.rightNode resultBlock:block];
    }
}

// 后序遍历  首先后序遍历左（右）子树，再后序遍历右（左）子树，最后访问根
+ (void)treeLastInformationWithNode:(BinaryTreeNode *)rootNode resultBlock:(void (^)(NSInteger value))block
{
    if (rootNode.leftNode) {
        [self treeLastInformationWithNode:rootNode.leftNode resultBlock:block];
    }
    if (rootNode.rightNode) {
        [self treeLastInformationWithNode:rootNode.rightNode resultBlock:block];
    }
    if (block) {
        block(rootNode.value);
    }
}

// 私有方法
+ (BinaryTreeNode *)addTreeNode:(BinaryTreeNode *)treeNode value:(NSInteger)value {
    if (treeNode == nil) {
        treeNode = [[BinaryTreeNode alloc]init];
        treeNode.value = value;
    }else if (value < treeNode.value){
        treeNode.leftNode = [[self class]addTreeNode:treeNode.leftNode value:value];
    }else{
        treeNode.rightNode = [[self class]addTreeNode:treeNode.rightNode value:value];
    }
    return treeNode;
}



//
+ (BOOL)isFoundTreeNode:(BinaryTreeNode *)treeNode inTree:(BinaryTreeNode *)rootNode routePath:(NSMutableArray *)path {
    
    if (!rootNode || !treeNode) {
        return NO;
    }
    //找到节点
    if (rootNode == treeNode) {
        [path addObject:rootNode];
        return YES;
    }
    //压入根节点，进行递归
    [path addObject:rootNode];
    //先从左子树中查找
    BOOL find = [self isFoundTreeNode:treeNode inTree:rootNode.leftNode routePath:path];
    //未找到，再从右子树查找
    if (!find) {
        find = [self isFoundTreeNode:treeNode inTree:rootNode.rightNode routePath:path];
    }
    //如果2边都没查找到，则弹出此根节点
    if (!find) {
        [path removeLastObject];
    }
    
    return find;
}

@end
