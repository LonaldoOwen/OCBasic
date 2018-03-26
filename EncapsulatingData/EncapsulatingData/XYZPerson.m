//
//  XYZPerson.m
//  EncapsulatingData
//
//  Created by owen on 25/03/2018.
//  Copyright © 2018 owen. All rights reserved.
//

#import "XYZPerson.h"

@implementation XYZPerson

- (id)initWithFirstName: (NSString *)aFirstName lastName: (NSString *)aLastName {
    self = [super init];
    if (self) {
        /**
         # Access Instance Variables Directly from Initializer Methods 
         */
        _firstName = aFirstName;    // 配置instance variable，设置初始值
        _lastName = aLastName;
    }
    return self;
}

- (id)initWithFullName: (NSString *)aFullName {
    self = [super init];
    if (self) {
        _fullName = aFullName;
    }
    return self;
}

- (void)changeFirstName {
    NSString *aString = @"JinPing";
    
    // using instance variable
    //_firstName = aString;
    
    // using self、accessor method、dot syntax
    //self.firstName = aString;
    
    // using self、accessor method
    [self setFirstName:aString];
}

@end
