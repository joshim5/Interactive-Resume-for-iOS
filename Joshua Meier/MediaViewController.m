//
//  MediaViewController.m
//  Joshua Meier
//
//  Created by Joshua Meier on 4/9/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import "MediaViewController.h"

@interface MediaViewController ()

@end

@implementation MediaViewController
@synthesize media;
@synthesize mToolbar, mBack, mForward;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

    }
    return self;
}

- (void)done:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)back {
    // Load the HTML
    NSError *error = nil;
    NSString *path = [[NSBundle mainBundle] bundlePath];
    
    NSString *html;
    
    if (media) html = [NSString stringWithContentsOfFile:[path stringByAppendingPathComponent:@"media.html"] encoding:NSUTF8StringEncoding error:&error];
    else html = [NSString stringWithContentsOfFile:[path stringByAppendingPathComponent:@"awards.html"] encoding:NSUTF8StringEncoding error:&error];
    
    if (error) NSLog(@"%@", [error localizedDescription]);
    [webView loadHTMLString:html baseURL:[NSURL fileURLWithPath:path]];
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    //[self updateButtons];
}

- (void)updateButtons {
    //self.mBack.enabled = !self.mBack.enabled;
    self.mToolbar.hidden = !self.mToolbar.hidden;
    [self back];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect toolbarFrame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height - 44, [[UIScreen mainScreen] bounds].size.width, 44);

    self.mToolbar = [[UIToolbar alloc] initWithFrame:toolbarFrame];
    self.mToolbar.hidden = YES;
    self.mBack = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleDone target:self action:@selector(updateButtons)];
    [self.mToolbar setItems:@[self.mBack]];
    [self.view addSubview:self.mToolbar];
    
    // Add the navigation bar
    navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    navigationBar.tintColor = [UIColor purpleColor];
    navigationBar.backgroundColor = [UIColor blueColor];
    
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done:)];
    self.navigationController.navigationItem.leftBarButtonItem = doneButton;
    self.navigationItem.leftBarButtonItem = doneButton;
    
    UINavigationItem *navItem = [[UINavigationItem alloc] initWithTitle:@""];
    [navItem setLeftBarButtonItem:doneButton];
    
    [navigationBar setItems:@[navItem]];
    
    [self.view addSubview:navigationBar];
    
    // Add custom text to navigation bar
    UILabel *navigationTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    navigationTitle.backgroundColor = [UIColor clearColor];
    navigationTitle.textColor = [UIColor blackColor];
    navigationTitle.font = [UIFont fontWithName:@"Avenir-Medium" size:22.0];
    if (media) navigationTitle.text = @"Media";
    else navigationTitle.text = @"Awards";
    navigationTitle.textAlignment = NSTextAlignmentCenter;
    [navigationBar addSubview:navigationTitle];
    
    // Setup the WebView object
    CGRect webViewFrame = CGRectMake(0, 44, self.view.frame.size.width, self.view.frame.size.height-44);
    webView = [[UIWebView alloc] initWithFrame:webViewFrame];
    webView.userInteractionEnabled = YES;
    webView.scalesPageToFit = YES;
    webView.delegate = self;
    [self.view addSubview:webView];
    
    // Load the HTML
    NSError *error = nil;
    NSString *path = [[NSBundle mainBundle] bundlePath];
    
    NSString *html;
    
    if (media) html = [NSString stringWithContentsOfFile:[path stringByAppendingPathComponent:@"media.html"] encoding:NSUTF8StringEncoding error:&error];
    else html = [NSString stringWithContentsOfFile:[path stringByAppendingPathComponent:@"awards.html"] encoding:NSUTF8StringEncoding error:&error];

    if (error) NSLog(@"%@", [error localizedDescription]);
    [webView loadHTMLString:html baseURL:[NSURL fileURLWithPath:path]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
