//
//  Model.h
//  JKUpdaterExample
//
//  Created by Joseph Kain on 5/18/13.
//  Copyright (c) 2013 Joseph Kain. All rights reserved.
//

#import <Foundation/Foundation.h>

// This simple Model implements an update method -advanceCounterForIndex which can be used
// from actions in the ViewController.  The Model also implements observable properties
// for the colors of the labels.  The Model encapsulates the business logic of computing
// the colors based on the inputs fed in through -advanceCounterForIndex.

@interface Model : NSObject

@property (strong, nonatomic) UIColor* colorLabelTop;
@property (strong, nonatomic) UIColor* colorLabelBottom;

- (void)advanceCounterForIndex:(NSUInteger)index;

@end
