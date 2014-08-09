//
//  VVIPhonePlaceholderViewController.m
//  viOSTutorial
//
//  Created by Vichare, Vivek on 8/9/14.
//  Copyright (c) 2014 Vivandro. All rights reserved.
//

#import "VVIPhonePlaceholderViewController.h"

@implementation VVIPhonePlaceholderViewController

- (IBAction)backButtonTapped:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES
                             completion:^{
                                 NSLog(@"viv: Dismissing self = %@", self);
                             }];
}

@end
