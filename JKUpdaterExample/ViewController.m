//
//  ViewController.m
//  JKUpdaterExample
//
//  Created by Joseph Kain on 5/13/13.
//  http://www.antipodalapps.com/2013/05/17/solid-mvc-design-ios/
//  http://github.com/joekain/JKUpdaterExample
//

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
