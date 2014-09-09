//
//  LauncherViewController.m
//  Joshua Meier
//
//  Created by Joshua Meier on 4/14/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import "LauncherViewController.h"
#import "NewEducationViewController.h"
#import "ExperienceHolderPageViewController.h"
#import "ExperienceViewController.h"
//#import "AwardsViewController.h"
#import "MediaViewController.h"

@interface LauncherViewController ()

- (void)goButtonHit:(UIButton *)sender;
- (void)educationSelected:(id)sender;
- (void)experienceSelected:(id)sender;
- (void)projectsSelected:(id)sender;
- (void)awardsSelected:(id)sender;
- (void)mediaSelected:(id)sender;

@end

@implementation LauncherViewController

@synthesize pickerView, goButton, learn1, learn2, learn3, learn4, learn5;

- (id)init {
    self = [super init];
    if (self) {
        curComp0 = 0;
        curComp1 = 0;
        curComp2 = 0;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
    
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    
    [self.goButton addTarget:self action:@selector(goButtonHit:) forControlEvents:UIControlEventTouchDown];
    [self.learn1 addTarget:self action:@selector(educationSelected:) forControlEvents:UIControlEventTouchDown];
    [self.learn2 addTarget:self action:@selector(experienceSelected:) forControlEvents:UIControlEventTouchDown];
    [self.learn3 addTarget:self action:@selector(projectsSelected:) forControlEvents:UIControlEventTouchDown];
    [self.learn4 addTarget:self action:@selector(awardsSelected:) forControlEvents:UIControlEventTouchDown];
    [self.learn5 addTarget:self action:@selector(mediaSelected:) forControlEvents:UIControlEventTouchDown];
}

- (void)goButtonHit:(UIButton *)sender {
    NSLog(@"curComp0 == %d; curComp1 == %d; curComp2 == %d", curComp0, curComp1, curComp2);
    if (curComp0 == 4 && curComp1 == 3 && curComp2 == 20) { // Education
        [self educationSelected:sender];
    } else if (curComp0 == 4 && curComp1 == 23 && curComp2 == 15) { // Experience
        [self experienceSelected:sender];
    } else if (curComp0 == 15 && curComp1 == 17 && curComp2 == 14) { // Projects
        [self projectsSelected:sender];
    } else if (curComp0 == 0 && curComp1 == 22 && curComp2 == 0) { // Awards
        [self awardsSelected:sender];
    } else if (curComp0 == 12 && curComp1 == 4 && curComp2 == 3) { // Media
        [self mediaSelected:sender];
    }
}

#pragma mark -
#pragma mark SelectedFunctions

- (void)educationSelected:(id)sender
{
    NewEducationViewController *educationVC = [[NewEducationViewController alloc] init];
    [self presentViewController:educationVC animated:YES completion:NULL];
}

- (void)experienceSelected:(id)sender
{
    ExperienceHolderPageViewController *pvc = [[ExperienceHolderPageViewController alloc] initWithJoshExperience];
    [self.navigationController presentViewController:pvc animated:YES completion:NULL];
}

- (void)projectsSelected:(id)sender
{
    ExperienceHolderPageViewController *pvc = [[ExperienceHolderPageViewController alloc] initWithJoshProjects];
    [self.navigationController presentViewController:pvc animated:YES completion:NULL];
}

- (void)awardsSelected:(id)sender
{
    MediaViewController *mediaVC = [[MediaViewController alloc] init];
    mediaVC.media = FALSE;
    [self.navigationController presentViewController:mediaVC animated:YES completion:NULL];
}

- (void)mediaSelected:(id)sender
{
    MediaViewController *mediaVC = [[MediaViewController alloc] init];
    mediaVC.media = TRUE;
    [self.navigationController presentViewController:mediaVC animated:YES completion:NULL];
}

#pragma mark -
#pragma mark UIPickerViewDataSource Protocol

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 3;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 26;
}

#pragma mark -
#pragma mark UIPickerViewDelegate Protocol

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == 0) {
        curComp0 = row;
    } else if (component == 1) {
        curComp1 = row;
    } else if (component == 2) {
        curComp2 = row;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    int asciiCode = 65+row;
    return [NSString stringWithFormat:@"%c", asciiCode];
}

@end
