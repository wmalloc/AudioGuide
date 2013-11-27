//
//  CLALeftMenuViewController.h
//  Audio Guide
//
//  Created by Waqar Malik on 11/21/13.
//  Copyright (c) 2013 Claret Labs, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CLALeftMenuViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@property (weak, nonatomic) IBOutlet UIView *separatorView;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
