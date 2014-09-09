//
//  ExperienceViewController.m
//  Joshua Meier
//
//  Created by Joshua Meier on 4/9/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import "ExperienceViewController.h"

@interface ExperienceViewController ()

@end

@implementation ExperienceViewController
@synthesize jobLabel, imageView, descriptionLabel, foregroundColor, backgroundColor;
@synthesize jobText, imageLocationText, descriptionText;
@synthesize currentViewControllerNumber;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.foregroundColor = [UIColor colorWithRed:240.0f green:230.0f blue:3.0f alpha:1.0f];
        self.backgroundColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:1.0f];
    }
    return self;
}

- (void)prepareWithJob:(NSString *)jobTitle desciption:(NSString *)description imageTitle:(NSString *)imageTitle foregroundColor:(UIColor *)foregroundColorP backgroundColor:(UIColor *)backgroundColorP
{
    // Set data properties
    self.jobText = jobTitle;
    self.imageLocationText = imageTitle;
    self.descriptionText = description;
    self.foregroundColor = foregroundColorP;
    self.backgroundColor = backgroundColorP;
    
    // Set IBOutlet properties
    self.jobLabel.text = self.jobText;
    self.imageView.image = [UIImage imageNamed:self.imageLocationText];
    self.descriptionLabel.text = self.descriptionText;
    
    // Set Colors
    self.view.backgroundColor = self.backgroundColor;
    self.jobLabel.textColor = self.foregroundColor;
    self.descriptionLabel.textColor = self.foregroundColor;
}

- (IBAction)goBack:(void *)sender {
    [self.parentViewController dismissViewControllerAnimated:YES completion:NULL];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.title = self.title;
    
    // Set IBOutlet properties
    self.jobLabel.text = self.jobText;
    self.imageView.image = [UIImage imageNamed:self.imageLocationText];
    self.descriptionLabel.text = self.descriptionText;
    
    // Set Colors
    self.view.backgroundColor = self.backgroundColor;
    self.jobLabel.textColor = self.foregroundColor;
    self.descriptionLabel.textColor = self.foregroundColor;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
