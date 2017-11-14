//
//  ArrayUtility.m
//  LargestNumber
//
//  Created by KevinT on 2017-11-04.
//  Copyright © 2017 kevint. All rights reserved.
//

#import "ArrayUtility.h"

@implementation ArrayUtility
//////////////////////////////////////////////////////////////
- (NSNumber*)largestNumber:(NSArray*)numbers
{
  //    highest number in the loop initially set to a number lower than all numbers in the array
  NSNumber *highestNumber = @-999;
  
  //    each number of the array gets assigned to NSNumber variable in the loop initially set to 0
  NSNumber *number = @0;
  
  //    loop through each number in the array starting from position 0 increment by 1
  for (int i = 0; i < numbers.count; i++) {
    
    //      assign each number of the NSArray into NSNumber variable
    number = numbers[i];
    
    //      check to see if the highest number found so far is less than current number of the array being evaluated
    if (highestNumber.intValue < number.intValue) {
      
      //        assign the current number of the array to be the highest number
      highestNumber = number;
    }
  }
  return highestNumber;
}
//////////////////////////////////////////////////////////////
- (NSNumber*)smallestNumber:(NSArray*)numbers
{
  //    highest number in the loop initially set to a number lower than all numbers in the array
  NSNumber *smallestNumber = @999;
  
  //    each number of the array gets assigned to NSNumber variable in the loop initially set to 0
  NSNumber *number = @0;
  
  //    loop through each number in the array starting from position 0 increment by 1
  for (int i = 0; i < numbers.count; i++) {
    
    //      assign each number of the NSArray into NSNumber variable
    number = numbers[i];
    
    //      check to see if the highest number found so far is less than current number of the array being evaluated
    if (smallestNumber.intValue > number.intValue) {
      
      //        assign the current number of the array to be the highest number
      smallestNumber = number;
    }
  }
  return smallestNumber;
}
//////////////////////////////////////////////////////////////
- (NSNumber*)medianNumber:(NSArray*)numbers
{
  NSNumber *medianNumber = nil;
  
//  sort the numbers in the array passed into the method
  NSArray *sorted = [numbers sortedArrayUsingSelector:@selector(compare:)];
  
//  odd number of elements in the array
  if (sorted.count % 2 != 0) {
    
//    find the index of the middle element of the array by dividing count of the array by 2 based on the fact that index of first element of an array is 0
    NSInteger middle = [sorted count] / 2;
    
//    median is the middle number of the sorted array of numbers
    medianNumber = [sorted objectAtIndex:middle];
  }
  
//  even number of elements in the array
  else {
    
//    find the element index of the higher middle number of the array by dividing count of the array by 2 based on the fact that index of first element of an array is 0
    NSInteger middleHigh = [sorted count] / 2;
    
//    find the element index of the lower middle number of the array by dividing count of the array by 2 and substract by 1, based on the fact that index of first element of an array is 0
    NSInteger middleLow = ([sorted count] / 2) - 1;
    
//    using the element index of the middle high and middle low numbers of the sorted array, return the 2 middle numbers and put them in a separate array/ find the average of the 2 numbers
    NSMutableArray *middle2Numbers = [[NSMutableArray alloc] initWithObjects:[sorted objectAtIndex:middleHigh], [sorted objectAtIndex:middleLow], nil];
    medianNumber = [middle2Numbers valueForKeyPath:@"@avg.self"];
  }
  return medianNumber;
}
@end
