//
//  MergeSort.m
//  Objectie-C-Algorithm
//
//  Created by hei on 7/8/17.
//  Copyright © 2017 hei. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort

+ (NSArray<NSNumber *> * _Nonnull)sort:(NSArray<NSNumber *> * _Nonnull)array leftIndex:(NSInteger)leftIndex rightIndex:(NSInteger)rightIndex {
    
    if (leftIndex >= rightIndex) {
        return [NSArray arrayWithObject:array[leftIndex]];
    }
    
    NSInteger midIndex = (leftIndex + rightIndex) / 2;
    NSArray<NSNumber *> *leftArray = [self sort:array leftIndex:leftIndex rightIndex:midIndex];
    // NSLog(@"sorted leftArray: %@", leftArray);
    NSArray<NSNumber *> *rightArray = [self sort:array leftIndex:midIndex + 1 rightIndex:rightIndex];
    // NSLog(@"sorted rightArray: %@", rightArray);
    NSArray *result = [self merge:leftArray rightArray:rightArray];
    // NSLog(@"sorted result: %@", result);
    return result;
}

+ (NSArray<NSNumber *> * _Nonnull)merge:(NSArray<NSNumber *>  * _Nonnull )leftArray rightArray:(NSArray<NSNumber *>  * _Nonnull )rightArray {
    NSInteger capacility = [leftArray count] + [rightArray count];
    NSMutableArray<NSNumber *> *tmpArray = [NSMutableArray arrayWithCapacity:capacility];
    NSInteger leftIndex = 0;
    NSInteger rightIndex = 0;
    while (leftIndex < [leftArray count] && rightIndex < [rightArray count]) {
        NSInteger leftValue = [leftArray[leftIndex] integerValue];
        NSInteger rightValue = [rightArray[rightIndex] integerValue];
        if (leftValue <= rightValue) {
            [tmpArray addObject:leftArray[leftIndex]];
            leftIndex++;
        } else {
            [tmpArray addObject:rightArray[rightIndex]];
            rightIndex++;
        }
    }
    
    while (leftIndex < [leftArray count]) {
        [tmpArray addObject:leftArray[leftIndex]];
        leftIndex++;
    }
    
    while (rightIndex < [rightArray count]) {
        [tmpArray addObject:rightArray[rightIndex]];
        rightIndex++;
    }
    
    return tmpArray;
}


@end
