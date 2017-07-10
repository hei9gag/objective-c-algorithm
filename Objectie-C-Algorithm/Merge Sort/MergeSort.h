//
//  MergeSort.h
//  Objectie-C-Algorithm
//
//  Created by hei on 7/8/17.
//  Copyright © 2017 hei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MergeSort : NSObject

+ (NSArray<NSNumber *> * _Nonnull)sort:(NSArray<NSNumber *> * _Nonnull)array leftIndex:(NSInteger)leftIndex rightIndex:(NSInteger)rightIndex;

@end
