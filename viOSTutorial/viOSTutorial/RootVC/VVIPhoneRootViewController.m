//
//  VVIPhoneRootViewController.m
//  viOSTutorial
//
//  Created by Vichare, Vivek on 8/8/14.
//  Copyright (c) 2014 Vivandro. All rights reserved.
//

#import "VVIPhoneRootViewController.h"
#import "VVIPhonePlaceholderViewController.h"

@interface VVIPhoneRootViewController ()

@end

@implementation VVIPhoneRootViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"viv: Going from %@ ---[TO]--> %@", segue.sourceViewController, segue.destinationViewController);
    NSLog(@"viv: We can check for protocol conformance(or worst case the class) of the destination to pass it information");
}


-(IBAction)unwindToIPhoneRootRC:(UIStoryboardSegue *)segue {
    NSLog(@"viv: Coming back from %@ ---[TO]--> %@", segue.sourceViewController, segue.destinationViewController);
    NSLog(@"viv: We can check for protocol conformance(or worst case the class) of the source to extract information");
}

- (IBAction)pushProgrammaticallyButtonTapped:(UIButton *)sender {
    VVIPhonePlaceholderViewController *placeholderVC = [[VVIPhonePlaceholderViewController alloc] initWithNibName:NSStringFromClass([VVIPhonePlaceholderViewController class])
                                                                                                           bundle:nil];
    [self presentViewController:placeholderVC
                       animated:YES
                     completion:^{
                         NSLog(@"viv: Presented from self %@ ----[TO]----> %@", self, placeholderVC);
                     }];
}

@end
