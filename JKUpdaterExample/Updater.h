//
//  Updater.h
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

#import <Foundation/Foundation.h>

@class Model;

@interface Updater : NSObject
@property (weak, nonatomic) IBOutlet UILabel *labelTop;
@property (weak, nonatomic) IBOutlet UILabel *labelBottom;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;

@property (weak, nonatomic) Model *model;


// This method should be called to perform all setup for the updater.
- (void)setupWithModel:(Model *)model;

// This method will update the entire UI.
- (void)update;

@end
