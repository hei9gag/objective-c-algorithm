//
//  BucketSort.m
//  Objectie-C-Algorithm
//
//  Created by hei on 7/9/17.
//  Copyright © 2017 hei. All rights reserved.
//

#import "BucketSort.h"
#import "InsertionSort.h"

@implementation BucketSort

+ (NSArray<NSNumber *> * _Nonnull)sort:(NSArray<NSNumber *>  * _Nonnull )values {
    NSInteger bucketSize = 10;
    NSMutableArray *buckets = [NSMutableArray arrayWithCapacity:bucketSize];
    NSMutableArray<NSNumber *> *sortedArray = [NSMutableArray arrayWithCapacity:[values count]];
    
    for (NSInteger index = 0; index < bucketSize; index++) {
        buckets[index] = [[NSMutableArray alloc] init];
    }
    
    // distribute value to different bucket
    NSInteger intValue = 0;
    NSInteger bucketIndex = 0;
    NSMutableArray<NSNumber *> *bucketArray = nil;
    for (NSNumber *value in values) {
        intValue = [value integerValue];
        bucketIndex = intValue / bucketSize;
        bucketArray = buckets[bucketIndex];
        [bucketArray addObject:value];
    }
    
    for (NSMutableArray<NSNumber *> *array in buckets) {
        NSArray<NSNumber *> *bucketSortedArray = [InsertionSort sort:array];
        [sortedArray addObjectsFromArray:bucketSortedArray];
    }
    
    return sortedArray;
}

@end
