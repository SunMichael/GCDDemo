//
//  SecViewController.h
//  GCDTest22
//
//  Created by keyrun on 14-7-17.
//  Copyright (c) 2014年 keyrun. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_OPTIONS(NSUInteger, EOCPermit) {
    EOCPermitDirectionUp   = 1 << 0 ,
    EOCPermitDirectionDown  = 1 << 1 ,
    EOCPermitDirectionLeft  = 1 << 2 ,
};

//typedef <#existing#> <#new#>;
@interface SecViewController : UIViewController
@property (nonatomic,strong) NSString *string1;
@property (nonatomic,copy) NSString *string2;
@end

@protocol SecViewControllerDelegate <NSObject>

-(void) getSecVCDelegate;

@end

