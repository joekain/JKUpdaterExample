//
//  ViewController.h
//  JKUpdaterExample
//
//  Created by Joseph Kain on 5/13/13.
//  http://www.antipodalapps.com/2013/05/17/solid-mvc-design-ios/
//  http://github.com/joekain/JKUpdaterExample
//

#import <UIKit/UIKit.h>

@class Updater;

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet Updater *updater;
@end
