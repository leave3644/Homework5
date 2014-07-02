//
//  TabBarViewController.m
//  Tumblr2
//
//  Created by Daniel O'Rorke on 6/30/14.
//  Copyright (c) 2014 Daniel O'Rorke. All rights reserved.
//

#import "TabBarViewController.h"
#import "HomeViewController.h"
#import "AccountViewController.h"
#import "TrendingViewController.h"
#import "LoginViewController.h"
#import "ComposeViewController.h"
#import "SearchViewController.h"

@interface TabBarViewController ()

@property (strong, nonatomic) SearchViewController * searchViewController;
@property (strong, nonatomic) AccountViewController * accountViewController;
@property (strong, nonatomic) TrendingViewController * trendingViewController;
@property (strong, nonatomic) HomeViewController * homeViewController;

@property (weak, nonatomic) IBOutlet UIImageView *exploreText;
@property (weak, nonatomic) IBOutlet UIView *contentView;
- (IBAction)onHomeButton:(id)sender;
- (IBAction)onSearchButton:(id)sender;
- (IBAction)onComposeButton:(id)sender;
- (IBAction)onAccountButton:(id)sender;
- (IBAction)onTrendingButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UIButton *homeButton;
@property (weak, nonatomic) IBOutlet UIButton *trendingButton;
@property (weak, nonatomic) IBOutlet UIButton *accountButton;


@end

@implementation TabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        //this code imbeds the home view controller within a navigation view controller.
        self.homeViewController = [[HomeViewController alloc] init];
        self.searchViewController = [[SearchViewController alloc] init];
        self.trendingViewController = [[TrendingViewController alloc] init];
        self.accountViewController = [[AccountViewController alloc] init];
        
        
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.exploreText.center = CGPointMake(.5*185, 15+.5*108);
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
        self.exploreText.center = CGPointMake(.5*185, 10+.5*108);
    }completion:nil];
    
    self.homeViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.homeViewController.view];
    
    self.homeButton.selected = YES;
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onHomeButton:(id)sender {
    //load the home vc
    self.homeViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.homeViewController.view];
    //unselect all the others the home button
    self.homeButton.selected = YES;
    //unselect the rest.
    self.searchButton.selected = NO;
    self.trendingButton.selected = NO;
    self.accountButton.selected = NO;
    
    //show the explore text
    self.exploreText.hidden = NO;

}

- (IBAction)onSearchButton:(id)sender {
    //load the vc
    self.searchViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.searchViewController.view];

    self.homeButton.selected = NO;
    self.searchButton.selected = YES;
    self.trendingButton.selected = NO;
    self.accountButton.selected = NO;
    
    //show the explore text
    self.exploreText.hidden = YES;
}

- (IBAction)onComposeButton:(id)sender {
    UIViewController *vc = [[ComposeViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical; //rise from below
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (IBAction)onAccountButton:(id)sender {
    //load the vc
    self.accountViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.accountViewController.view];
    
    self.homeButton.selected = NO;
    self.searchButton.selected = NO;
    self.trendingButton.selected = NO;
    self.accountButton.selected = YES;
    
    //show the explore text
    self.exploreText.hidden = NO;
}

- (IBAction)onTrendingButton:(id)sender {
    //load the vc
    self.trendingViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.trendingViewController.view];
    
    self.homeButton.selected = NO;
    self.searchButton.selected = NO;
    self.trendingButton.selected = YES;
    self.accountButton.selected = NO;
    
    //show the explore text
    self.exploreText.hidden = NO;
}
@end
