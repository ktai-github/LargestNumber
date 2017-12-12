//
//  ArrayUtility.h
//  LargestNumber
//
//  Created by KevinT on 2017-11-04.
//  Copyright © 2017 kevint. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArrayUtility : NSObject

-(NSNumber *) largestNumber: (NSMutableArray *) numbers;
-(NSNumber *) smallestNumber: (NSMutableArray *) numbers;
-(NSNumber *) medianNumber: (NSMutableArray *) numbers;

@end
