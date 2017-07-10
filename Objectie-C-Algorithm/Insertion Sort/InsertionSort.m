//
//  InsertionSort.m
//  Objectie-C-Algorithm
//
//  Created by hei on 7/9/17.
//  Copyright © 2017 hei. All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort

+ (NSArray<NSNumber *> * _Nonnull)sort:(NSArray<NSNumber *>  * _Nonnull )values {
    
    if ([values count] == 1) {
        return values;
    }
    
    NSMutableArray<NSNumber *> *sortedArray = [NSMutableArray arrayWithArray:values];
    NSNumber *tmp;
    for (NSInteger outerIndex = 1; outerIndex < [sortedArray count]; outerIndex++) {
        NSInteger targetValue = [sortedArray[outerIndex] integerValue];
        NSInteger innerIndex = outerIndex;
        
        while (innerIndex > 0 && [sortedArray[innerIndex-1] integerValue] > targetValue) {
            // swap
            tmp = sortedArray[innerIndex];
            sortedArray[innerIndex] = sortedArray[innerIndex-1];
            sortedArray[innerIndex-1] = tmp;
            innerIndex--;
        }
    }
    
    return sortedArray;
}

@end
