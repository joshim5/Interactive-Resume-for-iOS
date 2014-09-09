//
//  LauncherViewController.h
//  Joshua Meier
//
//  Created by Joshua Meier on 4/14/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LauncherViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
{
    IBOutlet UIPickerView *pickerView;
    IBOutlet UIButton *goButton;
    IBOutlet UIButton *learn1;
    IBOutlet UIButton *learn2;
    IBOutlet UIButton *learn3;
    IBOutlet UIButton *learn4;
    IBOutlet UIButton *learn5;
    
    int curComp0;
    int curComp1;
    int curComp2;
}

@property (nonatomic, strong) UIPickerView *pickerView;
@property (nonatomic, strong) UIButton *goButton;
@property (nonatomic, strong) UIButton *learn1;
@property (nonatomic, strong) UIButton *learn2;
@property (nonatomic, strong) UIButton *learn3;
@property (nonatomic, strong) UIButton *learn4;
@property (nonatomic, strong) UIButton *learn5;

@end
