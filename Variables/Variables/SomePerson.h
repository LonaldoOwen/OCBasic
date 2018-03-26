//
//  SomePerson.h
//  Variables
//
//  Created by libowen on 2018/3/26.
//  Copyright © 2018年 libowen. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface SomePerson : NSObject

@property NSString *firstName;
@property NSString *lastName;

-(id)initWithFirstName: (NSString *)aFirstName lastName: (NSString *)aLastName;
-(void)printMyFullName;

@end
