//
//  NewEducationViewController.m
//  Joshua Meier
//
//  Created by Joshua Meier on 4/14/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import "NewEducationViewController.h"

@interface NewEducationViewController ()

@end

@implementation NewEducationViewController
@synthesize doneButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"inited");

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [doneButton setAction:@selector(finished)];
}

- (IBAction)finished {
    NSLog(@"hiFinished");
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
