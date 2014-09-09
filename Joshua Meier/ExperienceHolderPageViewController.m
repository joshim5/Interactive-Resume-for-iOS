//
//  ExperienceHolderPageViewController.m
//  Joshua Meier
//
//  Created by Joshua Meier on 4/14/14.
//  Copyright (c) 2014 Joshua Meier. All rights reserved.
//

#import "ExperienceHolderPageViewController.h"
#import "ExperienceViewController.h"

@interface ExperienceHolderPageViewController ()

@end

@implementation ExperienceHolderPageViewController

- (id)initWithJoshExperience
{
    self = [super initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    if (self) {
        self.title = @"Experience";
        // Prepare content
        
        jobs = [NSArray arrayWithObjects:@"Computer Vision Engineer", @"iOS Developer", @"Invited Researcher", @"Chief Executive Officer", @"Co-Founder and Executive Director", @"Independent Researcher", @"Summer Researcher", @"Independent iOS Developer", nil];
        imageTitles = [NSArray arrayWithObjects:@"Experience_Canary.jpg", @"Experience_Columbia.jpg", @"Experience_Harvard.png", @"Experience_Provita.png", @"Experience_RescueTheVoice.png", @"Experience_BCA.png", @"Experience_Technion.png", @"Experience_Apple.jpg", nil];
        descriptions = [NSArray arrayWithObjects:
                        
                        @"Canary is an entirely new approach to home security, controlled from your smartphone. Through Canary's mobile app, you can check in on your home from virtually anywhere. At Canary, I develop novel machine learning and computer vision algorithms to detect suspicious activity. Users are notified of threats via iPhone.",
                        
                        @"I collaborated with physicians at Columbia University Medical Center to design software that is used in real-world medical situations. Researchers and physicians in the Department of Emergency Medicine and Pediatrics can use my software to determine patients' vein visibility. As the only developer on the team, I designed the iOS software independently.",
                        
                        @"I was invited by Harvard Medical School to implement my independently proposed research in their labs. Specifically, I developed methods to control rapid aging in cells which could improve stem cells, treat cancer, and ameliorate other age-related diseases. I formulated bioinformatics frameworks using R/Bioconductor, Ingenuity Pathway Analysis, and custom Python.",
                        
                        @"As CEO of Provita Pharmaceuticals, a biotechnology company run exclusively by high school students, I directed development and designed the concept of transgenic mosquitoes engineered to deliver vaccines. I collaborated with finance and marketing groups. Our work was featured in Scientific American and I was honored to meet with the FDA and DEP.",
                        
                        @"I founded the non-profit organization Rescue the Voice, using debate strategies to give voices to abused youth. Our innovative curriculum draws from underlying debate principles to encourage social interaction. Involvement includes 20 volunteers, 100 children, and 4 partner organizations.",
                        
                        @"At the Stem Cell and Nanoscale Imaging Laboratories at the Bergen County Academies, I performed several research projects. I was invited to continue my clinically-applicable cancer treatment at Harvard Medical School last summer. I also made a novel stem cell discovery in my project, The Missing Genome: Mitochondrial DNA Deletions in Stem Cells.",
                        
                        @"At the Eve Topf and US NPF Centers for Neurodegenerative Diseases (Technion, Haifa, Israel), I developed a project entitled \"Skp1 as a Novel Therapeutic Target for the Treatment of Parkinson’s Disease\". I studied novel molecular interactions and established a new connection between forms of Parkinson's disease.",
                        
                        @"As a developer, entrepreneur, and freelancer, I independently designed, marketed, and published free and profitable applications on the Apple App Store. Please see the projects component of this \"Joshua Meier\" app for more details.",
                        
                        nil];
        colors_background = [NSArray arrayWithObjects:
                             [UIColor colorWithRed:0.0f/255 green:0.0f/255 blue:0.0f/255 alpha:1.0f], // Canary - Black
                             [UIColor colorWithRed:185.0f/255 green:228.0f/255 blue:248.f/255 alpha:1.0f], // Columbia - Blue
                             [UIColor colorWithRed:0.0f/255 green:0.0f/255 blue:0.0f/255 alpha:1.0f], // Harvard - Black
                             [UIColor colorWithRed:0.0f/255 green:0.0f/255 blue:0.0f/255 alpha:1.0f], // Provita - Black
                             [UIColor colorWithRed:40.0f/255 green:40.0f/255 blue:60.0f/255 alpha:1.0f], // Rescue the Voice - Purple
                             [UIColor colorWithRed:255.0f/255 green:255.0f/255 blue:255.0f/255 alpha:1.0f], // BCA
                             [UIColor colorWithRed:2.0f/255 green:94.0f/255 blue:141.0f/255 alpha:1.0f], // Technion - Blue
                             [UIColor colorWithRed:9.0f/255 green:8.0f/255 blue:13.0f/255 alpha:1.0f], // Apple - Black
                             nil];
        
        colors_foreground = [NSArray arrayWithObjects:
                             [UIColor colorWithRed:240.0f/255 green:230.0f/255 blue:3.0f/255 alpha:1.0f], // Canary - Yellow
                             [UIColor colorWithRed:2.0f/255 green:83.0f/255 blue:151.0f/255 alpha:1.0f], // Columbia - White
                             [UIColor colorWithRed:194.0f/255 green:30.0f/255 blue:30.f/255 alpha:1.0f], // Harvard - Crimson
                             [UIColor colorWithRed:49.0f/255 green:123.0f/255 blue:75.0f/255 alpha:1.0f], // Provita - Green
                             [UIColor colorWithRed:218.0f/255 green:218.0f/255 blue:218.0f/255 alpha:1.0f], // Rescue the Voice - White
                             [UIColor colorWithRed:84.0f/255 green:42.0f/255 blue:8.0f/255 alpha:1.0f], // BCA
                             [UIColor colorWithRed:255.0f/255 green:255.0f/255 blue:255.0f/255 alpha:1.0f], // Technion - White
                             [UIColor colorWithRed:227.0f/255 green:227.0f/255 blue:277.0f/255 alpha:1.0f], // Apple - Silver
                             nil];
    }
    return self;
}

- (id)initWithJoshProjects
{
    self = [super initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    if (self) {
        self.title = @"Projects";
        // Prepare content
        
        jobs = [NSArray arrayWithObjects:@"Mishneh Torah for iOS", @"Jewish Treats for iOS", @"Selichot for iOS", @"iWillNotProcrastinate for iOS", @"Novel Quantification Methods for Vein Visibility", @"Invited TED Speaker", @"Rapid Aging Control", nil];
        imageTitles = [NSArray arrayWithObjects:@"Projects_MishnehTorah.jpeg", @"Projects_JewishTreats.jpeg", @"Projects_Selichot.png", @"Projects_iWillNotProcrastinate.jpeg", @"Projects_Columbia.png", @"Projects_TEDxRedmond.png", @"Siemens-Winner.png", nil];
        descriptions = [NSArray arrayWithObjects:
                        
                        @"The Mishneh Torah, the first comprehensive code of Jewish law, was composed by Maimonides (1135-1204), one of history’s most preeminent Rabbis. I revitalized the Mishneh Torah for the 21st century, profiting thousands of dollars. Design is key along with search, bookmark, browsing, and sharing features. I have continued updating the app through iOS7.",
                        
                        @"In an effort to give my skills back to the community, I independently built the Jewish Treats app as community service for the National Jewish Outreach Program. Updated daily, Jewish Treats shares interesting and enjoyable observations about Judaism, or as we call them: Juicy Bits of Judaism.",
                        
                        @"Developed just in time for the holidays, the Selichot app includes Jewish prayers recited before the high holidays of Yom Kippur and Rosh HaShana. Interactive bilingual features and design were included. This app was another adventure in bringing Jewish culture to the 21st century.",
                        
                        @"iWillNotProcrastinate helps you to determine in which classes you procrastinate the most! Use iWillNotProcrastinate to isolate the problem, work on it, and track your progress over time! After studying, challenge your friends through Facebook to find out who procrastinates the least!",
                        
                        @"I developed \"Novel Vein Visibility Quanitification Methods for Vein Visibility\" for reasearchers at Columbia Univeristy Medical School. The iPhone App is currently being used by researchers and physicians. Statisical analysis will be performed to determine the efficacy of this approach.",
                        
                        @"In September 2012, I was invited to speak to >1000 people at TEDxRedmond at Microsoft Headquarters in Redmond, Washington. I spoke about Shaping the Mind: Ancient Hebraic Texts and how my studies of history and literature have inspired and propelled my scientific pursuits.",
                        
                        @"When we get older, our cell growth slows. In my project, I harnessed this aging process to treat diseases. By understanding rapid aging, I 'aged' cancer to stop its growth. Conversely, I slowed the rapid aging of artificially-generated stem cells. I also demonstrate applications to other age-related diseases such as Parkinson's and diabetes.",
                        
                        nil];
        colors_background = [NSArray arrayWithObjects:
                             [UIColor colorWithRed:0.0f/255 green:0.0f/255 blue:0.0f/255 alpha:1.0f], // Canary - Black
                             [UIColor colorWithRed:185.0f/255 green:228.0f/255 blue:248.f/255 alpha:1.0f], // Columbia - Blue
                             [UIColor colorWithRed:0.0f/255 green:0.0f/255 blue:0.0f/255 alpha:1.0f], // Harvard - Black
                             [UIColor colorWithRed:0.0f/255 green:0.0f/255 blue:0.0f/255 alpha:1.0f], // Provita - Black
                             [UIColor colorWithRed:40.0f/255 green:40.0f/255 blue:60.0f/255 alpha:1.0f], // Rescue the Voice - Purple
                             [UIColor colorWithRed:255.0f/255 green:255.0f/255 blue:255.0f/255 alpha:1.0f], // BCA
                             [UIColor colorWithRed:2.0f/255 green:94.0f/255 blue:141.0f/255 alpha:1.0f], // Technion - Blue
                             [UIColor colorWithRed:9.0f/255 green:8.0f/255 blue:13.0f/255 alpha:1.0f], // Apple - Black
                             nil];
        
        colors_foreground = [NSArray arrayWithObjects:
                             [UIColor colorWithRed:240.0f/255 green:230.0f/255 blue:3.0f/255 alpha:1.0f], // Canary - Yellow
                             [UIColor colorWithRed:2.0f/255 green:83.0f/255 blue:151.0f/255 alpha:1.0f], // Columbia - White
                             [UIColor colorWithRed:194.0f/255 green:30.0f/255 blue:30.f/255 alpha:1.0f], // Harvard - Crimson
                             [UIColor colorWithRed:49.0f/255 green:123.0f/255 blue:75.0f/255 alpha:1.0f], // Provita - Green
                             [UIColor colorWithRed:218.0f/255 green:218.0f/255 blue:218.0f/255 alpha:1.0f], // Rescue the Voice - White
                             [UIColor colorWithRed:84.0f/255 green:42.0f/255 blue:8.0f/255 alpha:1.0f], // BCA
                             [UIColor colorWithRed:255.0f/255 green:255.0f/255 blue:255.0f/255 alpha:1.0f], // Technion - White
                             [UIColor colorWithRed:227.0f/255 green:227.0f/255 blue:277.0f/255 alpha:1.0f], // Apple - Silver
                             nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ExperienceViewController *experienceViewController = [[ExperienceViewController alloc] init];
    experienceViewController.title = self.title;
    experienceViewController.currentViewControllerNumber = 0;
    [experienceViewController prepareWithJob:[jobs objectAtIndex:experienceViewController.currentViewControllerNumber] desciption:[descriptions objectAtIndex:experienceViewController.currentViewControllerNumber] imageTitle:[imageTitles objectAtIndex:experienceViewController.currentViewControllerNumber] foregroundColor:[colors_foreground objectAtIndex:experienceViewController.currentViewControllerNumber] backgroundColor:[colors_background objectAtIndex:experienceViewController.currentViewControllerNumber]];
    self.dataSource = self;
    self.delegate = self;
    
    [self setViewControllers:@[experienceViewController]
                   direction:UIPageViewControllerNavigationDirectionForward
                    animated:YES
                  completion:NULL];
}

- (void)goBack {
    [self.parentViewController dismissViewControllerAnimated:YES completion:NULL];
}

#pragma mark - UIPageViewControllerDataSource

- (UIViewController *)pageViewController:(UIPageViewController *)pvc viewControllerBeforeViewController:(ExperienceViewController *)vc
{
    if (vc.currentViewControllerNumber == 0) return nil;
    
    ExperienceViewController *experienceViewController = [[ExperienceViewController alloc] init];
    experienceViewController.currentViewControllerNumber = vc.currentViewControllerNumber - 1;
    [experienceViewController prepareWithJob:[jobs objectAtIndex:experienceViewController.currentViewControllerNumber] desciption:[descriptions objectAtIndex:experienceViewController.currentViewControllerNumber] imageTitle:[imageTitles objectAtIndex:experienceViewController.currentViewControllerNumber] foregroundColor:[colors_foreground objectAtIndex:experienceViewController.currentViewControllerNumber] backgroundColor:[colors_background objectAtIndex:experienceViewController.currentViewControllerNumber]];
    
    return experienceViewController;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pvc viewControllerAfterViewController:(ExperienceViewController *)vc
{
    if (vc.currentViewControllerNumber == jobs.count - 1) return nil;
    
    ExperienceViewController *experienceViewController = [[ExperienceViewController alloc] init];
    experienceViewController.currentViewControllerNumber = vc.currentViewControllerNumber + 1;
    [experienceViewController prepareWithJob:[jobs objectAtIndex:experienceViewController.currentViewControllerNumber] desciption:[descriptions objectAtIndex:experienceViewController.currentViewControllerNumber] imageTitle:[imageTitles objectAtIndex:experienceViewController.currentViewControllerNumber] foregroundColor:[colors_foreground objectAtIndex:experienceViewController.currentViewControllerNumber] backgroundColor:[colors_background objectAtIndex:experienceViewController.currentViewControllerNumber]];
    
    return experienceViewController;
}

#pragma mark - UIPageViewControllerDelegate

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    // The number of items reflected in the page indicator.
    
    return jobs.count;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    // The selected item reflected in the page indicator.
    
    ExperienceViewController *exVC = pageViewController.childViewControllers.firstObject;
    return exVC.currentViewControllerNumber;
}

@end
