//
//  ViewController.m
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

#import "ViewController.h"
#import "Updater.h"
#import "Model.h"

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Allocate a new model.  An alternative would be to add the Model as an Object in Interface Builder
        // and connect it to the model property (after adding IBOutlet).
        self.model = [[Model alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    // The updater loads with along with the view.  At this point it can be setup with the model.
    // Note, if the model were also configured with the view and connected to an outlet it would be
    // loaded and available at this time.
    [self.updater setupWithModel:self.model];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // Update the view for the first time
    [self.updater update];
}

#pragma mark - Actions

- (IBAction)buttonAction:(UIButton *)sender {
    [self.model advanceCounterForIndex:sender.tag];
}

@end
