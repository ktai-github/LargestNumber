//
//  ArrayUtility.m
//  LargestNumber
//
//  Created by KevinT on 2017-11-04.
//  Copyright © 2017 kevint. All rights reserved.
//

#import "ArrayUtility.h"

@implementation ArrayUtility

- (int)largestNumber:(NSArray*)numbers
{
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
  return highestNumber;
  //    print the highest number of the array
//  NSLog(@"highest number = %@", highestNumber);
}

@end
