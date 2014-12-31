//
//  SecViewController.m
//  GCDTest22
//
//  Created by keyrun on 14-7-17.
//  Copyright (c) 2014年 keyrun. All rights reserved.
//

#import "SecViewController.h"
#import "ViewController.h"
@interface SecViewController ()

@end
extern NSString *exterString ;
@implementation SecViewController

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
    NSLog(@"String %@ ",aString);
    
    ViewController *vc =[[ViewController alloc] initWithNibName:nil bundle:nil];
    [vc chargePhoneBlcok:^NSString *(NSString *oneStr, NSString *secStr) {
        NSLog(@" SecVC gotted");
        return @"OK";
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
