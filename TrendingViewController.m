//
//  TrendingViewController.m
//  Tumblr2
//
//  Created by Kelly An on 7/1/14.
//  Copyright (c) 2014 Kelly An. All rights reserved.
//

#import "TrendingViewController.h"

@interface TrendingViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation TrendingViewController

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
    
    self.scrollView.contentSize = CGSizeMake(320,1136);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
