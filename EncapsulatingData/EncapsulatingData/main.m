//
//  main.m
//  EncapsulatingData
//
//  Created by owen on 25/03/2018.
//  Copyright © 2018 owen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //
        //XYZPerson *zhangsan = [[XYZPerson alloc] init];
        XYZPerson *lisi = [[XYZPerson alloc] initWithFirstName:@"Si" lastName:@"Li"];
        
        /**
         # Use Accessor Methods to Get or Set Property Values
         */
        NSString *firstName = [lisi firstName];     // 调用getter
        [lisi setFirstName:@"GuangLiang"];          // 调用setter
        NSLog(@"lisi: %@", lisi);
        
    }
    return 0;
}
