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

//copy 和 strong 的区别
@property (nonatomic,strong) NSArray *bookArray1;
@property (nonatomic,copy) NSArray *bookArray2;


@end
extern NSString *exterString ;
@implementation SecViewController
@synthesize string1 = _string1 ;
@synthesize string2 = _string2 ;
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
    vc.externString = @"aaaa";
    
    
    NSMutableArray *books = [@[@"book1"] mutableCopy];
    self.bookArray1 = books ;
    self.bookArray2 = books ;
    [books addObject:@"book2"];
    NSLog(@"bookArray1: %@",self.bookArray1);
    NSLog(@"bookArray2: %@",self.bookArray2);
    //输出的bookArray1中有@“book2” bookArray2中没有
//    备注：使用strong，则person.bookArray1与可变数组books指向同一块内存区域，books内容改变，导致person.bookArray1的内容改变，因为两者是同一个东西；而使用copy，person.bookArray2在赋值之前，将books内容复制，创建一个新的内存区域，所以两者不是一回事，books的改变不会导致person.bookArray2的改变。
    
//    NSMutableString *mString = [@"string" mutableCopy];
//    _string1 = mString ;
//    _string2 = mString ;
//    mString = (NSMutableString *)[mString stringByAppendingString:@"add"];
    NSLog(@" string1 == %@ ",self.string1);
    NSLog(@" string2 == %@",self.string2);
    
    [vc impleteAMethod];     
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
