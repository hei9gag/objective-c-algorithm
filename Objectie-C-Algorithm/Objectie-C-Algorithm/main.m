//
//  main.m
//  Objectie-C-Algorithm
//
//  Created by hei on 7/8/17.
//  Copyright © 2017 hei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MergeSort.h"
#import "InsertionSort.h"
#import "BucketSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        NSArray *values = @[@38, @27, @43, @3, @9, @82, @10];
//        NSArray *sortedResult = [MergeSort sort:values leftIndex:0 rightIndex:[values count] - 1];
//        NSLog(@"sorted result: %@", sortedResult);
        
//        NSArray *insertionSort = [InsertionSort sort:values];
//        NSLog(@"insertion sort result: %@", insertionSort);
        
        NSArray *bucketSort = [BucketSort sort:values];
        NSLog(@"bucket sort result: %@", bucketSort);
    }
    return 0;
}
