//
//  Updater.h
//  JKUpdaterExample
//
//  Created by Joseph Kain on 5/13/13.
//  http://www.antipodalapps.com/2013/05/17/solid-mvc-design-ios/
//  http://github.com/joekain/JKUpdaterExample
//

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
