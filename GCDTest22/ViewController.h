//
//  ViewController.h
//  GCDTest22
//
//  Created by keyrun on 14-7-17.
//  Copyright (c) 2014年 keyrun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "GCDTest22-swift.h"           //在oc中使用swift 需要写PRODUCT NAME -swift.h ，在swift中使用oc 需要在生产的bridging-Header中写 #import "XXX.h"

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
typedef NSString *(^ClassBlock)(NSString *oneStr ,NSString *secStr);   //声明block



@interface ViewController : UIViewController

{
    swiftView *sview ;
    
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

@interface ViewController (SSViewController)      //类的分类
-(void) impleteAMethod ;
@end


@interface ViewController ()            //类的扩展

@property (nonatomic ,strong) NSString *externString;

@end


