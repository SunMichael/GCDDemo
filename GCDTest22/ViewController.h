//
//  ViewController.h
//  GCDTest22
//
//  Created by keyrun on 14-7-17.
//  Copyright (c) 2014年 keyrun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
extern NSString *const aString ;          //全局变量

enum DConnectionState {
    DConnectionEnable ,
    DConnectionDisenable ,
};
typedef enum {
    SDTouchStateOne = 0,
    SDTouchStateTwo ,
    SDTouchStateThree
}SDTouchState;

typedef int (^oneBlock)(int ,NSString *) ;
typedef NSString *(^ClassBlock)(NSString *oneStr ,NSString *secStr);



@interface ViewController : UIViewController

{
    oneBlock firstBlock ;
    enum DConnectionState state ;
    SDTouchState sdstate;
    
    NSString *pathOfUserPlist ;
    NSMutableDictionary *copyData ;
}

+(id)shareViewController;
@property (nonatomic ,assign) enum DConnectionState currentState ;
@property (nonatomic ,assign) ClassBlock cblock ;
@property (nonatomic ,assign) NSString * staticString ;
//@property (nonatomic ,assign) oneBlock
-(void)chargePhoneBlcok:(ClassBlock) cBlock ;
@end


@protocol ViewControllerDelegate <NSObject>

-(void) oneTestDelegate;

@end

@interface ViewController (SSViewController)
-(void) impleteAMethod ;
@end


@interface ViewController ()

@property (nonatomic ,strong) NSString *externString;

@end



