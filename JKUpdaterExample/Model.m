//
//  Model.m
//  JKUpdaterExample
//
//  Created by Joseph Kain on 5/18/13.
//  Copyright (c) 2013 Joseph Kain. All rights reserved.
//

#import "Model.h"

@interface Model () {
    NSUInteger _counters[2];
}
@end

@implementation Model

- (id)init
{
    self = [super init];
    if (self) {
        [self updateColors];
    }
    return self;
}

- (UIColor *)colorForValue:(NSUInteger)index {
    index = index % 5;
    switch (index) {
        case 0: return [UIColor greenColor];
        case 1: return [UIColor blueColor];
        case 2: return [UIColor blackColor];
        case 3: return [UIColor yellowColor];
        case 4: return [UIColor redColor];
    }
    
    return nil;
}

- (void)updateColors {
    self.colorLabelTop = [self colorForValue:_counters[0]];
    self.colorLabelBottom = [self colorForValue:_counters[1]];
}

- (void)advanceCounterForIndex:(NSUInteger)index {
    if (index < 2) {
        _counters[index] += 1;
        [self updateColors];
    }
}

@end
