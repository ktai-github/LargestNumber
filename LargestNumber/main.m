//
//  main.m
//  LargestNumber
//
//  Created by KevinT on 2017-10-27.
//  Copyright © 2017 kevint. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayUtility.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
//    array with negative number(s) must use double quotes to work
    NSArray *numbers = @[@"-44", @"51", @"10", @"70"];

//    find and display largest number
    ArrayUtility *largestNumberFinder = [[ArrayUtility alloc] init];
    NSNumber *i = [largestNumberFinder largestNumber:numbers];
    NSLog(@"largest number = %@", i);
    
//    find and display smallest number
    ArrayUtility *smallestNumberFinder = [[ArrayUtility alloc] init];
    NSNumber *j = [smallestNumberFinder smallestNumber:numbers];
    NSLog(@"smallest number = %@", j);
    
//    find and display median number
    ArrayUtility *medianNumberFinder = [[ArrayUtility alloc] init];
    NSNumber *k = [medianNumberFinder medianNumber:numbers];
    NSLog(@"median number = %@", k);
    
  }
  return 0;
}

