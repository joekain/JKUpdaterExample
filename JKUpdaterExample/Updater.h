//
//  Updater.h
//  JKUpdaterExample
//
//  Created by Joseph Kain on 5/13/13.
//  http://www.antipodalapps.com/2013/05/17/solid-mvc-design-ios/
//  http://github.com/joekain/JKUpdaterExample
//

#import <Foundation/Foundation.h>

@interface Updater : NSObject
@property (weak, nonatomic) IBOutlet UILabel *labelTop;
@property (weak, nonatomic) IBOutlet UILabel *labelBottom;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;

- (void)update;
@end
