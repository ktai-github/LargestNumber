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
- (NSNumber*)largestNumber:(NSMutableArray*)numbers
{
  //    highest number initially set to the first number of the original array
  NSNumber *highestNumber = [numbers firstObject];
  
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
- (NSNumber*)smallestNumber:(NSMutableArray*)numbers
{
  //    smallest number initially set to the first number of the original array
  NSNumber *smallestNumber = [numbers firstObject];
  
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
- (NSNumber*)medianNumber:(NSMutableArray*)numbers
{
  
//  median number initially set to nil
  NSNumber *medianNumber = nil;
  
  //    smallest number initially set to the first number of the original array
  NSNumber *smallestNumber = [numbers firstObject];
  
  //    each number of the array will be evaluated, initially set to 0
  NSNumber *number = @0;
  
//  separate sorted array to store the numbers after sorting into ascending order
  NSMutableArray *sorted = [[NSMutableArray alloc]init];
  
  //initial count of the numbers in the original array before it gets sorted
  int k = (unsigned int)numbers.count;
  
  //    loop through as many times as the original count of the array
  for (int i = 0; i < k; i++) {

//    loop through each number in the array as many times as the current count of the original array
    for (int j = 0; j < numbers.count; j++) {
      
      //      store each number of the original array as current number
      number = numbers[j];
      
      //      current smallest number larger than the current number being evaluated
      if (smallestNumber.intValue > number.intValue) {
        
        //        assign the current number of the array to be the smallest number
        smallestNumber = number;
        
      }
    }
    
//    current count of the array is not 0
    if (numbers.count != 0) {
      
//      remove the smallest number from the original array
      [numbers removeObject:smallestNumber];
      
//      add the smallest number to the sorted array
      [sorted addObject:smallestNumber];
      
//      smallest number set to the first number of the original array with the previous smallest number of original array having been removed
      smallestNumber = [numbers firstObject];
    }
    
  }
  NSLog(@"ascending order %@", sorted);
  
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
