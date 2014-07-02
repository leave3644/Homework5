//
//  LoginViewController.m
//  Tumblr2
//
//  Created by Kelly An on 7/1/14.
//  Copyright (c) 2014 Kelly An. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
- (IBAction)onCancelButton:(id)sender;

@end

@implementation LoginViewController

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

- (IBAction)onCancelButton:(id)sender {
    //dismiss the modal view controller
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
