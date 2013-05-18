//
//  ViewController.h
//  JKUpdaterExample
//
//  Created by Joseph Kain on 5/13/13.
//  http://www.antipodalapps.com/2013/05/17/solid-mvc-design-ios/
//  http://github.com/joekain/JKUpdaterExample
//

#import <UIKit/UIKit.h>

@class Model;
@class Updater;

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet Updater *updater;


// This Model stores data for ViewController and implements its business logic.
@property (strong, nonatomic) Model *model;
@end
