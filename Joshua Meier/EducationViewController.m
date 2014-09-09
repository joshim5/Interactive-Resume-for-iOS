//
//  EducationViewController.m
//  Joshua Meier
//
//  Created by Joshua Meier on 4/9/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import "EducationViewController.h"

@interface EducationViewController ()

@end

@implementation EducationViewController

- (void)viewDidLoad
{
    // Add the background
    UIView *backgroundView = [[UIView alloc] initWithFrame:[self.view bounds]];
    backgroundView.backgroundColor = [UIColor grayColor]; // TODO: Swap with Color
    [self.view addSubview:backgroundView];
    
    // Add the navigation bar
    navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 64)];
    navigationBar.tintColor = [UIColor greenColor];
    navigationBar.backgroundColor = [UIColor blueColor];
    [self.view addSubview:navigationBar];
    
    // Add custom text to navigation bar
    
    UILabel *navigationTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 320, 44)];
    navigationTitle.backgroundColor = [UIColor clearColor];
    navigationTitle.textColor = [UIColor blackColor];
    navigationTitle.font = [UIFont fontWithName:@"Avenir-Medium" size:22.0];
    navigationTitle.text = @"Education";
    navigationTitle.textAlignment = NSTextAlignmentCenter;
    [navigationBar addSubview:navigationTitle];

    // Setup the scroll view
    
    scrollViewMain = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 77, 320, [[UIScreen mainScreen] bounds].size.height-77-[UIApplication sharedApplication].statusBarFrame.size.height)];
    scrollViewMain.delegate = self;
    scrollViewMain.contentSize = CGSizeMake(320, scrollViewMain.frame.size.height*3);
    scrollViewMain.scrollEnabled = YES;
    scrollViewMain.pagingEnabled = YES;
    scrollViewMain.scrollsToTop = NO;
    scrollViewMain.showsVerticalScrollIndicator = NO;
    scrollViewMain.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:scrollViewMain];
    
    // Section One: Current Education
    
    sectionOne = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 100)]; sectionOne.alpha = 1;
    
    UILabel *currentTitle = [[UILabel alloc] initWithFrame:CGRectMake(15, 8, 290, 33)];
    currentTitle.backgroundColor = [UIColor clearColor];
    currentTitle.text = @"Current: High School";
    currentTitle.textColor = [UIColor colorWithRed:(6.0/255.0) green:(179.0/255.0) blue:(206.0/255.0) alpha:1.0];
    currentTitle.font = [UIFont fontWithName:@"Avenir-Medium" size:24.0];
    [sectionOne addSubview:currentTitle];
    
    UILabel *currentDescription = [[UILabel alloc] initWithFrame:CGRectMake(15, 18, 290, 99)];
    currentDescription.backgroundColor = [UIColor clearColor];
    currentDescription.numberOfLines = 0;
    currentDescription.text = @"I study at the Academy for the Advancement of Science and Technology in Hackensack, NJ. It's hard to believe, but my public school has a stem cell lab, two electron microscopes, a financial trading floor, and university-level science classes!";
    currentTitle.textColor = [UIColor colorWithRed:(6.0/255.0) green:(179.0/255.0) blue:(206.0/255.0) alpha:1.0];
    currentTitle.font = [UIFont fontWithName:@"Avenir-Book" size:17.0];
    [sectionOne addSubview:currentDescription];
    
    UIImageView *currentImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"education_current-image.png"]];
    [sectionOne addSubview:currentImage];
    
    sectionOne.frame = CGRectMake(0, 0, 320, 300);
    [scrollViewMain addSubview:sectionOne];

    // Section Two: College Education
    sectionTwo = [[UIView alloc] initWithFrame:CGRectMake(0, 295, 150, 100)]; sectionTwo.alpha = 1;
    
    UILabel *collegeTitle = [[UILabel alloc] initWithFrame:CGRectMake(15, 8, 290, 33)];
    collegeTitle.backgroundColor = [UIColor clearColor];
    collegeTitle.text = @"This Fall: College";
    collegeTitle.textColor = [UIColor colorWithRed:(6.0/255.0) green:(179.0/255.0) blue:(206.0/255.0) alpha:1.0];
    collegeTitle.font = [UIFont fontWithName:@"Avenir-Medium" size:24.0];
    [sectionTwo addSubview:collegeTitle];
    
    UILabel *collegeDescription = [[UILabel alloc] initWithFrame:CGRectMake(15, 18, 290, 99)];
    collegeDescription.backgroundColor = [UIColor clearColor];
    collegeDescription.numberOfLines = 0;
    collegeDescription.text = @"I've learned so much in high school, but now I'm onto the next stage: college. I was accepted to Harvard, MIT, Princeton, and Yale and can't wait for the adventures college will bring.";
    collegeDescription.textColor = [UIColor colorWithRed:(6.0/255.0) green:(179.0/255.0) blue:(206.0/255.0) alpha:1.0];
    collegeDescription.font = [UIFont fontWithName:@"Avenir-Book" size:17.0];
    [sectionTwo addSubview:collegeDescription];
    
    [sectionTwo addSubview:currentImage];
    
    [scrollViewMain addSubview:sectionTwo];
    
    [super viewDidLoad];
}

@end
