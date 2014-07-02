//
//  HomeViewController.m
//  Tumblr2
//
//  Created by Daniel O'Rorke on 6/30/14.
//  Copyright (c) 2014 Daniel O'Rorke. All rights reserved.
//

#import "HomeViewController.h"
#import "LoginViewController.h"

@interface HomeViewController ()
- (IBAction)onLoginButton:(id)sender;

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLoginButton:(id)sender {
    UIViewController *vc = [[LoginViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical; //rise from below
    [self presentViewController:vc animated:YES completion:nil];
}
@end
