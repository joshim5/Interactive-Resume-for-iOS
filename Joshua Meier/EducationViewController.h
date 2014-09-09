//
//  EducationViewController.h
//  Joshua Meier
//
//  Created by Joshua Meier on 4/9/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EducationViewController : UIViewController <UIScrollViewDelegate> {
    IBOutlet UINavigationBar *navigationBar;
    UIScrollView *scrollViewMain;
    BOOL showSectionOne; UIView *sectionOne;
    BOOL showSectionTwo; UIView *sectionTwo;
    BOOL showSectionThree; UIView *sectionThree;
    BOOL showSectionFour; UIView *sectionFour;

}

@end
