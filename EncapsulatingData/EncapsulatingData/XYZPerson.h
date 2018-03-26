//
//  XYZPerson.h
//  EncapsulatingData
//
//  Created by owen on 25/03/2018.
//  Copyright © 2018 owen. All rights reserved.
//
///
/// 功能：
///

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject


/**
 # Declare Public Properties for Exposed Data
 定义property时，自动合成accessor methods，自动创建instance variables
 */
// define properties
@property NSString *firstName;
@property NSString *lastName;
@property (readonly) NSString *fullName;


// define custom initializer
- (id)initWithFirstName: (NSString *)aFirstName lastName: (NSString *)aLastName;
- (id)initWithFullName: (NSString *)aFullName;

// other methods
- (void)changeFirstName;

@end
