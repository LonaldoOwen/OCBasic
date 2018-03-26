//
//  SomePerson.m
//  Variables
//
//  Created by libowen on 2018/3/26.
//  Copyright © 2018年 libowen. All rights reserved.
//

#import "SomePerson.h"
#import "AnotherPerson.h"


// define a const variable
// preprocessor(预处理), and no memory will be allocated for it；宏定义
// 作用域: 本文件内
#define some_define_int 32


@implementation SomePerson


// global int variable
// 只初始化一次，如果变量被修改，值将随修改变化，不会重新初始化；
// 作用域：在本文件内，任何方法都可以使用此变量；其他文件如果在定义相同名字的变量时，编译器会报错
int someGlobalInt = 0;





-(id)initWithFirstName: (NSString *)aFirstName lastName: (NSString *)aLastName {
    self = [super init];
    if (self) {
        _firstName = aFirstName;
        _lastName = aLastName;
    }
    
    return self;
}

-(void)printMyFullName {
    
    /**
     Note that the initialization of automatic and static variables is quite different. Automatic variables (local variables are automatic by default, except you explicitely use static keyword) are initialized during the run-time, so the initialization will be executed whenever it is encountered in the program. Static (and global) variables are initialized during the compile-time, so the initial values will simply be embeded in the executable file itself. If you change them, they will retain changed in the file.
     */
    // local variable（Automatic variables）
    // 动态初始化，每次调用时都初始化一次
    // 作用域：只在本方法内，随实例一起销毁；
    int someLocalInt = 0;
    someLocalInt ++;
    NSLog(@"someLocalInt = %d", someLocalInt);
    
    // static local variable
    // 只初始化一次，如果变量被修改，值将随修改变化，不会重新初始化；
    // 作用域：只在本方法内，随实例一起销毁；
    static int kSomeStaticInt = 0;
    kSomeStaticInt ++;
    NSLog(@"kSomeStaticInt = %d", kSomeStaticInt);
    
    // change someGlobalInt
    someGlobalInt ++;
    NSLog(@"someGlobalInt: %d", someGlobalInt);
    
    // const local variable
    // 初始化后，就不可以再修改了；
    // 作用域：
    const int someConstInt = 10;
    //someConstInt ++;    //Cannot assign to variable 'someConstInt' with const-qualified type 'const int'
    NSLog(@"someConstInt: %d", someConstInt);
    
    // using define variable
    //some_define_int = 40;   //Expression is not assignable
    int someTemp = some_define_int;
    NSLog(@"someTemp = some_define_int: %d", someTemp);
    
    // using extern const variable
    [AnotherPersonExternalStringVariable stringByAppendingString:@"xxxxx"];
    NSLog(@"AnotherPersonExternalStringVariable: %@", AnotherPersonExternalStringVariable);
    
    
    //
    NSLog(@"My fullname is: %@", [self.lastName stringByAppendingString:self.firstName]);
}


@end
