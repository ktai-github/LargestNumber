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
    NSMutableArray *numbers = [[NSMutableArray alloc]init];
    [numbers addObject:@"0"];
    [numbers addObject:@"-20"];
    [numbers addObject:@"-20000000"];
    [numbers addObject:@"666666"];
    [numbers addObject:@"-444"];
    [numbers addObject:@"1"];

//    find and display largest number
    ArrayUtility *largestNumberFinder = [ArrayUtility new];
    NSNumber *i = [largestNumberFinder largestNumber:numbers];
    NSLog(@"largest number = %@", i);
    
//    find and display smallest number
    ArrayUtility *smallestNumberFinder = [[ArrayUtility alloc] init];
    NSNumber *j = [smallestNumberFinder smallestNumber:numbers];
    NSLog(@"smallest number = %@", j);
    
//    find and display median number
    ArrayUtility *medianNumberFinder = [ArrayUtility new];
    NSNumber *k = [medianNumberFinder medianNumber:numbers];
    NSLog(@"median number = %@", k);
    
  }
  return 0;
}

