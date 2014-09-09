//
//  ExperienceViewController.h
//  Joshua Meier
//
//  Created by Joshua Meier on 4/9/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExperienceViewController : UIViewController {
    IBOutlet UILabel *jobLabel;
    IBOutlet UIImageView *imageView;
    IBOutlet UILabel *descriptionLabel;
    IBOutlet UIColor *foregroundColor;
    IBOutlet UIColor *backgroundColor;
    
    NSString *jobText;
    NSString *imageLocationText;
    NSString *descriptionText;
    
    NSUInteger currentViewControllerNumber;
}

- (void)prepareWithJob:(NSString *)jobTitle desciption:(NSString *)description imageTitle:(NSString *)imageTitle foregroundColor:(UIColor *)foregroundColor backgroundColor:(UIColor *)backgroundColor;
- (IBAction)goBack:(void *)sender;

@property (nonatomic, strong) UILabel *jobLabel;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *descriptionLabel;
@property (nonatomic, strong) UIColor *foregroundColor;
@property (nonatomic, strong) UIColor *backgroundColor;


@property (nonatomic, strong) NSString *jobText;
@property (nonatomic, strong) NSString *imageLocationText;
@property (nonatomic, strong) NSString *descriptionText;

@property (nonatomic) NSUInteger currentViewControllerNumber;

@end
