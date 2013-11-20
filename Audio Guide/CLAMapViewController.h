//
//  CAGMapViewController.h
//  Audio Guide
//
//  Created by Waqar Malik on 11/18/13.
//  Copyright (c) 2013 Crimson Research, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CLAMapViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *arrowButton;
- (IBAction)updateMapView:(id)sender;
@end
