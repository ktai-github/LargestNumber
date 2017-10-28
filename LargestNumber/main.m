//
//  main.m
//  LargestNumber
//
//  Created by KevinT on 2017-10-27.
//  Copyright © 2017 kevint. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {

//    array with negative number(s) must use double quotes to work
    NSArray *numbers = @[@"-44", @"0", @"5", @"-100"];

//    highest number in the loop initially set to a number lower than all numbers in the array
    NSNumber *highestNumber = @-999;
    
//    each number of the array gets assigned to NSNumber variable in the loop initially set to 0
    NSNumber *number = @0;
    
//    loop through each number in the array starting from position 0 increment by 1
    for (int i = 0; i < numbers.count; i++) {
      
//      assign each number of the NSArray into NSNumber variable
      number = numbers[i];
//      NSLog(@"numbers[%d] = %@, highest number = %@", i, number, highestNumber);
      
//      check to see if the highest number found so far is less than current number of the array being evaluated
      if (highestNumber.intValue < number.intValue) {
        
//        assign the current number of the array to be the highest number
        highestNumber = number;
      }
    }
    
//    print the highest number of the array
    NSLog(@"highest number = %@", highestNumber);
    
  }
  return 0;
}
