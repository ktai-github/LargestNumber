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

//sort an array of numbers in ascending order
- (NSMutableArray*)sortNumbers:(NSMutableArray *)numbers{
  
  //count of the original array of numbers
  int k = (signed int)numbers.count;
  
  //  separate sorted array to store the numbers after sorting into ascending order
  NSMutableArray *sorted = [[NSMutableArray alloc]init];

  //    loop through as many times as the original count of the array
  for (int i = 0; i < k; i++) {
    
    //    loop through each number in the array as many times as the current count of the original array
    NSNumber *smallestNumber = [self smallestNumber:numbers];
    
    //    current count of the array is not 0
    if (numbers.count != 0) {
      
      //      remove the smallest number from the original array
      [numbers removeObject:smallestNumber];
      
      //      add the smallest number to the sorted array
      [sorted addObject:smallestNumber];

    }
    
  }
  return sorted;
}

//////////////////////////////////////////////////////////////
//sort the array in ascending order by removing the smallest number and adding it to the first position in a separate array, then remove the second smallest number and add it to the next position in that same separate array. these steps are repeated until all the numbers have been added to that separate array, in which the numbers are added in order from smallest to largest. find the median number of the array after the array is in ascending order

- (NSNumber*)medianNumber:(NSMutableArray*)numbers
{
  
//  median number initially set to nil
  NSNumber *medianNumber = nil;
  
// sort the numbers of the original array and show the sorted numbers
  NSMutableArray *sorted = [self sortNumbers:numbers];
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
