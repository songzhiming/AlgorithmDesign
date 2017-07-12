//
//  ListNode.h
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/12.
//  Copyright © 2017年 宋志明. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListNode : NSObject
//
+ (ListNode *)addNode:(ListNode *)p andValue:(id)value;


// 遍历链表     head 头结点   
+ (void)traveraslList:(ListNode *)head resultBlock:(void(^)(NSInteger i))block;


// 链表反转
+ (ListNode *)reverse:(ListNode *)head;

@end
