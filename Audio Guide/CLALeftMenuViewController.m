//
//  CLALeftMenuViewController.m
//  Audio Guide
//
//  Created by Waqar Malik on 11/21/13.
//  Copyright (c) 2013 Claret Labs, Inc. All rights reserved.
//

#import "CLALeftMenuViewController.h"
#import "CLATracksViewController.h"

NSString * const CLALeftMenuViewCellIdentifier = @"CLALeftMenuViewCell";
NSString * const CLALeftMenuFile = @"CLALeftMenu.plist";

@interface CLALeftMenuViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSArray *tableLayout;
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
    NSURL *layoutFileURL = [[NSBundle mainBundle] URLForResource:[CLALeftMenuFile stringByDeletingPathExtension] withExtension:[CLALeftMenuFile pathExtension]];
    self.tableLayout = [NSArray arrayWithContentsOfURL:layoutFileURL];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CLALeftMenuViewCellIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tableLayout.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CLALeftMenuViewCellIdentifier forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    NSDictionary *item = self.tableLayout[indexPath.row];
    cell.textLabel.text = item[@"title"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0)
    {
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"CLATrackListing" bundle:[NSBundle mainBundle]];
        UINavigationController *navController = (UINavigationController *)[storyBoard instantiateInitialViewController];
        [self.revealController setFrontViewController:navController];
        [self.revealController showViewController:navController];
    }

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
