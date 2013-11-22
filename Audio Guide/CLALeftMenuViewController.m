//
//  CLALeftMenuViewController.m
//  Audio Guide
//
//  Created by Waqar Malik on 11/21/13.
//  Copyright (c) 2013 Claert Labs, Inc. All rights reserved.
//

#import "CLALeftMenuViewController.h"
#import "CLACommon.h"

@interface CLALeftMenuViewController ()

@end

@implementation CLALeftMenuViewController

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
    [self.revealController setMinimumWidth:260.0 maximumWidth:280.0 forViewController:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
