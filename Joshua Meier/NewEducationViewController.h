//
//  NewEducationViewController.h
//  Joshua Meier
//
//  Created by Joshua Meier on 4/14/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewEducationViewController : UIViewController
{
    IBOutlet UIBarButtonItem *doneButton;
}

- (IBAction)finished;

@property (nonatomic, retain) UIBarButtonItem *doneButton;

@end
