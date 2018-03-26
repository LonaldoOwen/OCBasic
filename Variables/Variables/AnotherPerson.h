//
//  AnotherPerson.h
//  Variables
//
//  Created by libowen on 2018/3/26.
//  Copyright © 2018年 libowen. All rights reserved.
//

#import <Foundation/Foundation.h>

// AnotherPersonExternalStringVariable
// 在此处引用，其他文件import该文件后，就可以使用该变量
extern NSString *const AnotherPersonExternalStringVariable;

@interface AnotherPerson : NSObject

// AnotherPersonExternalStringVariable
//extern NSString * const AnotherPersonExternalStringVariable;

-(void)printMyFullName;



@end
