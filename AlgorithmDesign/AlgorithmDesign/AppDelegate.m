//
//  AppDelegate.m
//  AlgorithmDesign
//
//  Created by 宋志明 on 17/7/12.
//  Copyright © 2017年 宋志明. All rights reserved.
//

#import "AppDelegate.h"
#import "ListNode.h"
#import "BinaryTree.h"
#import "SwapNumber.h"
#import "BinarySearch.h"
#import "BubbleSort.h"
#import "QuickSort.h"
#import "SelectSort.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //
    [SwapNumber swapWithAlsoOr:1 b:2];
    NSInteger a = [SwapNumber greatestCommonFactor:100 b:120];
    NSInteger b = [BinarySearch binarySearchNoRecursion:@[@(1),@(3),@(5),@(7)] withKey:5];
    NSInteger c = [BinarySearch binarySearchNoRecursion:@[@(1),@(3),@(5),@(7)] withKey:5];
    
    NSMutableArray *arr = [BubbleSort bubbleSort:@[@(100),@(11),@(1),@(55),@(111)].mutableCopy];
    
    NSMutableArray *arr1 = @[@(100),@(11),@(1),@(55),@(111)].mutableCopy;
    [QuickSort quickSortWithArray:arr1 withLeft:0 andRight:arr1.count - 1];
    NSMutableArray *arr2 = @[@(100),@(11),@(1),@(55),@(111)].mutableCopy;
    [SelectSort selectSort:arr2];
    
//    //链表的操作
//    //创建列表
//    ListNode *a = [ListNode addNode:nil andValue:@1];
//    ListNode *b = [ListNode addNode:a andValue:@2];
//    ListNode *c = [ListNode addNode:b andValue:@3];
//    ListNode *d = [ListNode addNode:c andValue:@4];
//    ListNode *e = [ListNode addNode:d andValue:@5];
//    [ListNode traveraslList:a resultBlock:^(NSInteger i) {
//        NSLog(@"i--%ld",i);
//    }];
//    
//    ListNode *re = [ListNode reverse:a];
//    
//    [ListNode traveraslList:re resultBlock:^(NSInteger i) {
//        NSLog(@"j--%ld",i);
//    }];
    // 二叉树
//    BinaryTreeNode *node = [BinaryTree createTreeWithValues:@[@"4",@"2",@"7",@"1",@"3",@"9"]];
//    NSInteger  i = [BinaryTree depathOfBinaryTree:node];
//    NSLog(@"i---%ld",(long)i);
//    
//    ///////////////////////////
////                   4
////               2        7
////            1     3         9
//    ///////////////////////
//    [BinaryTree treeFirstInformationWithNode:node resultBlock:^(NSInteger value) {
//        NSLog(@"Firstvalue---%ld",value);
//    }];
//    [BinaryTree treeMiddleInfomationWithNode:node resultBlock:^(NSInteger value) {
//        NSLog(@"MidValue-----%ld",value);
//    }];
//    [BinaryTree treeLastInformationWithNode:node resultBlock:^(NSInteger value) {
//        NSLog(@"lastValue-----%ld",value);
//    }];
    
    
    return YES;
}




- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
