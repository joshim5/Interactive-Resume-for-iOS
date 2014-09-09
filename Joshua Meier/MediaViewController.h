//
//  MediaViewController.h
//  Joshua Meier
//
//  Created by Joshua Meier on 4/9/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MediaViewController : UIViewController <UIWebViewDelegate> {
    IBOutlet UINavigationBar *navigationBar;

    UIWebView *webView;
    
    UIToolbar* mToolbar;
    UIBarButtonItem* mBack;
    UIBarButtonItem* mForward;
    
    BOOL media;
}

- (void)done:(id)sender;

@property (nonatomic) BOOL media;

@property (nonatomic, retain) UIToolbar* mToolbar;
@property (nonatomic, retain) UIBarButtonItem* mBack;
@property (nonatomic, retain) UIBarButtonItem* mForward;

@end
