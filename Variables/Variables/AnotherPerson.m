//
//  AnotherPerson.m
//  Variables
//
//  Created by libowen on 2018/3/26.
//  Copyright © 2018年 libowen. All rights reserved.
//


#import "AnotherPerson.h"
#import "SomePerson.h"
#

@implementation AnotherPerson



//int someGlobalInt = 0;
// duplicate symbol _someGlobalInt in:
// clang: error: linker command failed with exit code 1 (use -v to see invocation)


//
NSString * const AnotherPersonExternalStringVariable = @"External String variable";


-(void)printMyFullName {
    NSLog(@"AnotherPersonExternalStringVariable: %@", AnotherPersonExternalStringVariable);
}


@end
