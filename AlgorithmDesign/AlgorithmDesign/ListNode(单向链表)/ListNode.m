//
//  ListNode.m
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/12.
//  Copyright © 2017年 宋志明. All rights reserved.
//


// 链表每个结点都有当前值  和  下个结点地址    链表 尾部结点的next = NULL
// 双向链表  有当前值 和上一个结点   和  下一个结点，  好处是  当对单独链表某个结点操作的时候，需要从头处理
// 循环链表  尾部结点的next = 头结点

#import "ListNode.h"

@interface ListNode()
{
    id value;//值
    ListNode *next;//下一个结点
}



@end


@implementation ListNode


+ (ListNode *)addNode:(ListNode *)p andValue:(id)value
{
    if (p == nil) {
        p = [[ListNode alloc]init];
        p->value = value;
        p->next = nil;
    }else{
        p->next = [ListNode addNode:p->next andValue:value];
    }
    return p;
}


+ (void)traveraslList:(ListNode *)head resultBlock:(void(^)(NSInteger i))block
{
    if (head->next == nil) {//尾结点
        if (block) {
            block([head->value integerValue]);
            return;
        }
    }
    if (block) {
        block([head->value integerValue]);
    }
    [ListNode traveraslList:head->next resultBlock:block];
}



+ (ListNode *)reverse:(ListNode *)head
{
    if (head == nil) {return head;}
    if (head->next == nil) {return head;}
    ListNode *current,*pnext,*prev;//prev 辅助
    current = head;
    pnext = current->next;
    current->next = nil;//这是反转后链表的最后一个结点，（也是原来的第一个）
    while (pnext) {
        prev = pnext->next;
        pnext->next = current;
        current = pnext;
        pnext = prev;
    }
    return current;
}

@end
