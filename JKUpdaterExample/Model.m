//
//  Model.m
//  JKUpdaterExample
//
//  Created by Joseph Kain on 5/18/13.
//  Copyright (c) 2013 Joseph Kain. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

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
