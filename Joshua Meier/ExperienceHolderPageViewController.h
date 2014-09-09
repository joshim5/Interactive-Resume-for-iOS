//
//  ExperienceHolderPageViewController.h
//  Joshua Meier
//
//  Created by Joshua Meier on 4/14/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExperienceHolderPageViewController : UIPageViewController <UIPageViewControllerDataSource, UIPageViewControllerDelegate>
{
    NSArray *jobs;
    NSArray *imageTitles; // Store NSString file names; load UIImages when needed
    NSArray *descriptions;
    NSArray *colors_background; // TODO: Implement these, thus changing colors
    NSArray *colors_foreground;
    NSUInteger currentNumber;
}

- (id)initWithJoshExperience;
- (id)initWithJoshProjects;

@end
