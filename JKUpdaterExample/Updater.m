//
//  Updater.m
//  JKUpdaterExample
//
//  Created by Joseph Kain on 5/13/13.
//  http://www.antipodalapps.com/2013/05/17/solid-mvc-design-ios/
//  http://github.com/joekain/JKUpdaterExample
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

#import "Updater.h"
#import "Model.h"
@implementation Updater

#pragma mark - Setup

- (void)setupObservationOnModel:(Model *)model {
    // Observe all properties on the model.  This call doesn't request the change dictionary as update
    // always sets the current state in the UI.
    for (NSString *property in @[@"colorLabelTop", @"colorLabelBottom"]) {
        [model addObserver:self forKeyPath:property options:0 context:nil];
    }
}

- (void) setupIndexing:(NSArray *)buttons {
    // Set tags on all the buttons.  It doesn't matter what order we do this in.  The tags
    // are used as a consistent set of indices between this Updater and the ViewController.
    int currentTag = 0;
    for (UIButton *button in buttons) {
        button.tag = currentTag;
        ++currentTag;
    }
}

- (void)setupWithModel:(Model *)model {
    [self setupObservationOnModel:model];
    [self setupIndexing:self.buttons];
    self.model = model;
}

#pragma mark - Update

// This method is called when one of the observed properties changes
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object
                        change:(NSDictionary *)change context:(void *)context {
    // Update the entire UI whenever anything changes.
    [self update];
}


- (void)update {
    self.labelTop.textColor = self.model.colorLabelTop;
    self.labelBottom.textColor = self.model.colorLabelBottom;
}
@end
