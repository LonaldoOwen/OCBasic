//
//  main.m
//  Variables
//
//  Created by libowen on 2018/3/26.
//  Copyright © 2018年 libowen. All rights reserved.
//
/// 功能：验证Objective-C的variables及相关的关键字：static、extern、constant
///
///
///
///

#import <Foundation/Foundation.h>
#import "SomePerson.h"
#import "AnotherPerson.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //
        SomePerson *zhangsan = [[SomePerson alloc] initWithFirstName:@"San" lastName:@"Zhang"];
        NSLog(@"zhangsan.firstName: %@", zhangsan.firstName);
        [zhangsan printMyFullName];
        [zhangsan printMyFullName];
        [zhangsan printMyFullName];
        
        AnotherPerson *lisi = [[AnotherPerson alloc] init];
        [lisi printMyFullName];
        [lisi printMyFullName];
        [lisi printMyFullName];
        
    }
    return 0;
}
