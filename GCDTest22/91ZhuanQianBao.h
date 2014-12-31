//
//  OriginData.h
//  TJiphone
//
//  Created by keyrun on 13-10-14.
//  Copyright (c) 2013年 keyrun. All rights reserved.
//

#ifndef TJiphone_OriginData_h
#define TJiphone_OriginData_h

typedef enum{
    XinHuaTi = 1,
    PingLun,
}topicTypeEnum;

#define KBlockColor2_0                              [UIColor colorWithRed:66.0/255.0 green:68.0/255.0 blue:70.0/255.0 alpha:1]
#define KGrayColor2_0                               [UIColor colorWithRed:137.0/255.0 green:142.0/255.0 blue:145.0/255.0 alpha:1]
#define KLightGrayColor2_0                          [UIColor colorWithRed:248.0/255.0 green:248.0/255.0 blue:248.0/255.0 alpha:1]
#define KOrangeColor2_0                             [UIColor colorWithRed:255.0/255.0 green:170.0/255.0 blue:25.0/255.0 alpha:1]
#define KLightOrangeColor2_0                        [UIColor colorWithRed:249.0/255.0 green:205.0/255.0 blue:121.0/255.0 alpha:1]
#define KGreenColor2_0                              [UIColor colorWithRed:112.0/255.0 green:166.0/255.0 blue:35.0/255.0 alpha:1]
#define KLightGreenColor2_0                         [UIColor colorWithRed:160.0/255.0 green:210.0/255.0 blue:90.0/255.0 alpha:1]
#define kDrakRedColor2_0                            [UIColor colorWithRed:195.0/255.0 green:25.0/255.0 blue:26.0/255.0 alpha:1]
#define KRedColor2_0                                [UIColor colorWithRed:239.0/255.0 green:86.0/255.0 blue:104.0/255.0 alpha:1]
#define KLightRedColor2_0                           [UIColor colorWithRed:255.0/255.0 green:105.0/255.0 blue:130.0/255.0 alpha:1]
#define KPurpleColor2_0                             [UIColor colorWithRed:150.0/255.0 green:122.0/255.0 blue:220.0/255.0 alpha:1]
#define KLightPurpleColor2_0                        [UIColor colorWithRed:180.0/255.0 green:150.0/255.0 blue:255.0/255.0 alpha:1]
#define kBlueColor2_0                               [UIColor colorWithRed:93.0/255.0 green:156.0/255.0 blue:236.0/255.0 alpha:1]
#define kLightBlueColor2_0                          [UIColor colorWithRed:79.0/255.0 green:192.0/255.0 blue:232.0/255.0 alpha:1]
#define kGrayLineColor2_0                           [UIColor colorWithRed:195.0/255.0 green:197.0/255.0 blue:199.0/255.0 alpha:1]
#define kBlockBackground2_0                         [UIColor colorWithRed:230.0/255.0 green:230.0/255.0 blue:230.0/255.0 alpha:1]
#define kImageBackgound2_0                          [UIColor colorWithRed:240.0/255.0 green:240.0/255.0 blue:240.0/255.0 alpha:1]
#define kLightYellow2_0                             [UIColor colorWithRed:255.0/255.0 green:250.0/255.0 blue:230.0/255.0 alpha:1]
#define kLightWhite2_0                              [UIColor colorWithRed:250.0/255.0 green:250.0/255.0 blue:250.0/255.0 alpha:1]
#define kPinkColor2_0                               [UIColor colorWithRed:255.0f/255.0f green:240.0f/255.0f blue:240.0f/255.0f alpha:1]
#define kBatterHeight                               ([[[UIDevice currentDevice]systemVersion]floatValue]) < (7.0) ? (20.0):(0.0)

#define KTipBackground2_0                           [UIColor colorWithRed:254.0/255.0 green:250.0/255.0 blue:230.0/255.0 alpha:1]


#define kFont2_0_Size11                             11
#define kFont2_0_Size16                             16


#define Spacing2_0                                  7.0
#define kTableLoadingViewHeight2_0                  20.0f
#define LineWidth                                   0.5f

#define IOS_Version                                 [[[UIDevice currentDevice] systemVersion] floatValue]

#define kOriginY                                    ([[[UIDevice currentDevice]systemVersion]floatValue]) >= (7.0) ? (20.0):(0.0)
#define kIsIOS7                                     [self respondsToSelector:@selector(setSeparatorInset:)]

#define httpTimeout                                 10
#define timeOutErrorCode                            300

#define kHeadViewHeigh                              44

#define kChooseViewX                                154/2

#define kChooseViewW                                330/2
#define kChooseViewH                                58/2

#define kTopHigh                                    101/2
#define kCenterHigh                                 102/2
#define kBottomHigh                                 112/2

//#define kFreshTime                                  60

#define kFont                                       @"HelveticaNeue-Bold"
#define kcolor                                      [UIColor colorWithRed:180.0/255.0 green:140.0/255.0 blue:100.0/255.0 alpha:1]
#define kCrownColor                                 [UIColor colorWithRed:118.0/255.0 green:66.0/255.0 blue:6.0/255.0 alpha:1]
#define kCoffeeColor                                [UIColor colorWithRed:167.0/255.0 green:125.0/255.0 blue:75.0/255.0 alpha:1]
#define kRedColor                                   [UIColor colorWithRed:192.0/255.0 green:48.0/255.0 blue:50.0/255.0 alpha:1]
#define kSilverColor                                [UIColor colorWithRed:160.0/255.0 green:160.0/255.0 blue:160.0/255.0 alpha:1]
#define kGrayColor                                  [UIColor colorWithRed:234.0/255.0 green:234.0/255.0 blue:234.0/255.0 alpha:1]
#define kAtcellColor                                [UIColor colorWithRed:230.0/255.0 green:230.0/255.0 blue:230.0/255.0 alpha:1]
#define kAtBgColor                                  [UIColor colorWithRed:207.0/255.0 green:207.0/255.0 blue:207.0/255.0 alpha:1]

//#define kOrangeColor                                [UIColor colorWithRed:255.0/255.0 green:108.0/255.0 blue:0/255.0 alpha:1]
#define kOrangeColor                                [UIColor colorWithRed:255.0/255.0 green:170.0/255.0 blue:25.0/255.0 alpha:1]
#define kColorOne                                   [UIColor colorWithRed:118.0/255.0 green:66.0/255.0 blue:6.0/255.0 alpha:1]
//#define kMRedColor [UIColor colorWithRed:192.0/255.0 green:48.0/255.0 blue:50.0/255.0 alpha:1]
#define kGreenColor                                 [UIColor colorWithRed:110.0/255.0 green:164.0/255.0 blue:46.0/255.0 alpha:1]
#define kmainScreenWidth                            [[UIScreen mainScreen]bounds].size.width
#define kmainScreenHeigh                            [[UIScreen mainScreen]bounds].size.height
#define loadingViewWidth                            50
#define loadingViewHeigh                            50
#define tabbarFont                                  [UIFont systemFontOfSize:11]
#define tabbarDefaultTextColor                      [UIColor colorWithRed:127.0/255.0 green:119.0/255.0 blue:112.0/255.0 alpha:1.0]
#define tabbarHighlightedTextColor                  [UIColor colorWithRed:227.0/255.0 green:134.0/255.0 blue:12.0/255.0 alpha:1.0]
#define kfootViewHeigh                              51
#define kwidth                                      23
#define kheigh                                      16
#define kfoot                                       9
#define knameheigh                                  14
#define knamewidth                                  80
#define klogowidth                                  80
#define klogoheigh                                  48

#define KLone                                       @"任务大厅"
#define KLtwo                                       @"活动中心"
#define KLthree                                     @"奖品兑换"
#define KLfour                                      @"我的淘金"

#define kGetNewMessage                              @"接收新的消息通知"
#define kCheckNewVersions                           @"检测新版本"
#define kAboutUs                                    @"关于我们"
#define kOpinion                                    @"意见反馈"
#define kMakeGrade                                  @"给我评分"
#define kVisitCode                                  @"输入邀请码"

#define kAboutUs                                    @"关于我们"

#define kTimeOutContent                             @"连接超时,请重新试试吧！"

#define kNetLoadingView                             90100
#define kTimeOutTag                                 200001
#define kNetViewTag                                 300001
#define kAlertViewTag                               400001
#define kLockTag                                    500001
#define kConnectQQ                                  @"1799466715"
#define kOfficeWeb                                  @"http://www.91taojin.com.cn"
#define kMakeGardeWeb                               @"http://www.91taojin.com.cn/appstore"

#define AppVersion                                  [[[NSBundle mainBundle]infoDictionary]objectForKey:(NSString* )kCFBundleVersionKey]

//#define kUrlPre                                     @"%@?d=api&c=%@&m=%@&IOS=ios"
#define kUrlPre                                     @"%@?d=api2&c=%@&m=%@&IOS=ios"
#define kTestWeb                                    @"http://10.1.1.19:882/index.php"

#define kOnlineWeb                                   @"http://www.91taojin.com.cn/index.php"   
//#define kOnlineWeb                                  @"http://10.1.1.19:882/index.php"

#define kRecordMyTopicData                          @"RMTD"
#define kRecordMyTopicID                            @"RMTID_"
#define kDefaultPic                                 @"pic_def@2x.png"



#define kwifiTip    @"温馨提示"
#define knewVersion @"又有新版本啦"
#define klockingTip @""
#define kupdateTip  @"重要升级"

// ------91赚钱宝版本
#define kUMengAppKey @"53d790af56240b4a02060765"

#define kYouMiId  @"3359afcb7441cd20"
#define kYouMiKey @"41d23b8aad9b0d29"

#define kLiMeiKey @"f666daa3be1a1a4194bde6f6223f8ed2"

#define kMiDiKey @"drsv8lxr1urde6b0"
#define kMiDiId  @"17800"

#define kDuoMengKey @"96ZJ2J3wze/57wTB9m"
#define kDuoMengPubID @"56OJz5LIuNFXEXj/2f"
#define kDuoMengPlaceID @"16TLmlCoApNn1NUkwcceT9Pk"

#define kWPKey @"eb91b4acedd5a70a933381974bfd7a15"

#define kYJFKey @"EMAQN6Q8N35157PARD8MJPURSD997YRVIU"
#define kYJFDevID @"80047"
#define kYJFAppID @"71930"

#define kSiteID @"2906"
#define kSiteKEY @"bd5a3551cf243995154bc584c67c1d2f"
#define kMediaID @"1229"

#define kAiDeKey @"cb82b17f91144951bba01dc6e7d5946f"

#define kChuKongKey @"818728468-6487E4-D004-9761-B5A1D5F6C"

#define kDianRuKey @"00006A12160000B2"

#define kAnWoKey @"e140b0032ff7448dbba27e9dcf474def"

#define kQuMiID @"2266340a44075a03"
#define kQuMiKey @"569df4df15410a60"


// 以下4家弃用
#define kKuGuoKey @"4a7b9328539949e19d8a2d9b2abf565f"
#define kJuPengID @"10189"
#define kJuPengKey @"k8ptogs6ni2zb0s7"
#define kMoPanID @"12636"
#define kMoPanKey @"t7nm100czfj8tvv0"
#define kZhiMengKey @"f85324b6754b72313f42e8b280f2bb4c"
#define kDianLeKey @"4b9a4fe37a01a419dd45fd9f820f7ee0"

// 以下是 shareSDK 个人版 数据
#define kShareSDKKey @"282a967a4b42"

#define kSinaKey @"3748616514"
#define kSinaSecret @"3cc8d4b57ed90c1eed0157ff42c6058f"
#define kSinaUrl @"http://www.91taojin.com.cn"

#define kTXWBKey @"801528806"
#define kTXWBSecert @"c26937b28484448dd8f2fd46fc0509d5"

#define kWXFriendKey @"wx6b0b93fa65870a97"         // 微信好友  微信朋友圈是一个id

#define kQQFriendKey @"1101885610"         // qq 和 qq空间 id一样  但qq空间有key
#define kQQZoneKey @"ama7s7RoAg0aB2Tn"

#define kShareTitle @"91赚钱宝"




// -----以下企业版
/*

 #define kYouMiId @"3611f12cf4251d75"
 #define kYouMiKey @"c3fb1d20a9443037"
 
 #define kDianRuKey @"00006412110000B2"
 
 #define kLiMeiKey @"913fb9cba94c14504eae895b5d50cf3a"
 
 #define kMiDiKey @"5kqkjqmah39bhwqa"
 #define kMiDiId  @"17799"
 
 #define kDuoMengKey @"96ZJ2l5gze/57wTAKO"
 
 #define kWPKey @"0ba9152efee0d58fd8f91aa0786d9b6d"
 
 #define kYJFKey @"EMZJ45BBI41SZ5SX0VHJRSLENW2GZ57SIN"
 #define kYJFDevID @"80047"
 #define kYJFAppID @"70433"
 
 #define kSiteID @"2140"
 #define kSiteKEY @"f859a8b1fe56e8b33897a1a1d8d42d53"
 #define kMediaID @"846"
 
 #define kAiDeKey @"807891a9c0d149539bbe12f92c00ae8d"
 
 #define kChuKongKey @"818730167-9539B9-1D6A-2D70-F2DA76B1E"
 
 #define kZhiMengKey @"998eede8cb68c0a74fc4e677c430e55a"
 
 #define kKuGuoKey @"4a7b9328539949e19d8a2d9b2abf565f"
 
 #define kAnWoKey @"351c0f602f9a4ad28c024353faabb082"
 
 #define kDianLeKey @"e36c0b87aebedaaf72dfa2c31525c333"
 
 #define kJuPengID @"10184"
 #define kJuPengKey @"b91s5hrw9iwt0w9x"
 
 #define kMoPanID @"12637"
 #define kMoPanKey @"wkze9wcyni28csd5"
 
 #define kQuMiID @"26855f3933d62522"
 #define kQuMiKey @"142560eb046f00e5"

*/

#define kYouMiName @"有米"
#define kDianRuName @"点入"
#define kLiMeiName @"力美"
#define kMiDiName @"米迪"
#define kDuoMengName @"多盟"
#define kWanPuName @"万普"
#define kYJFName @"易积分"
#define kAiPuName @"爱普"
#define kAiDeName @"艾德"

#define kChuKongName @"触控"
#define kZhiMengName @"指盟"
#define kKuGuoName @"酷果"
#define kAnWoName @"安沃"
#define kDianLeName @"点乐"

#define kMaoPaoName @"冒泡"
#define kJuPengName @"巨朋"
#define kMoPanName @"磨盘"
#define kQuMiName @"趣米"


#define kViewWeith 271
#define kViewHeigth 191
#define kYOff 14
#define kYOff2 51
#define kViewColor [UIColor colorWithRed:255.0/255.0 green:110.0/255.0 blue:0.0/255.0 alpha:1]
#define kGreenColor2 [UIColor colorWithRed:111.0/255.0 green:164.0/255.0 blue:47.0/255.0 alpha:1]
#define kthreeColor [UIColor colorWithRed:150.0/255.0 green:200.0/255.0 blue:80.0/255.0 alpha:1]
#define kNameColor [UIColor colorWithRed:118.0/255.0 green:66.0/255.0 blue:6.0/255.0 alpha:1]
#define kSelectBGColor [UIColor colorWithRed:224.0/255.0 green:224.0/255.0 blue:224.0/255.0 alpha:1]
#define kSilverColor2  [UIColor colorWithRed:168.0/255.0 green:168.0/255.0 blue:168.0/255.0 alpha:1]
#define kGreenColor1 [UIColor colorWithRed:129.0/255.0 green:165.0/255.0 blue:53.0/255.0 alpha:1]
#define kSelectGreen [UIColor colorWithRed:139.0/255.0 green:183.0/255.0 blue:76.0/255.0 alpha:1]

#define kYellowColor [UIColor colorWithRed:248.0/255.0 green:163.0/255.0 blue:26.0/255.0 alpha:1]
#define kSelectYellow [UIColor colorWithRed:250.0/255.0 green:195.0/255.0 blue:65.0/255.0 alpha:1]

#define kLineColor [UIColor colorWithRed:205.0/255.0 green:205.0/255.0 blue:205.0/255.0 alpha:1]
#define kLineColor2_0 [UIColor colorWithRed:200.0/255.0 green:200.0/255.0 blue:200.0/255.0 alpha:1]
#define kTJBGColor [UIColor colorWithRed:245.0/255.0 green:245.0/255.0 blue:245.0/255.0 alpha:1]
#define kJFQBGColor [UIColor colorWithRed:235.0/255.0 green:235.0/255.0 blue:235.0/255.0 alpha:1]
#define kJFQSelctColor [UIColor colorWithRed:255.0/255.0 green:240.0/255.0 blue:220.0/255.0 alpha:1]
#define kJFQSelctColor2_0 [UIColor colorWithRed:230.0/255.0 green:230.0/255.0 blue:230.0/255.0 alpha:1]

#define kJFQIsCheck @"JFQIsCheck"
#define kJfqLeftTag 10110
#define kJfqRightTag 10111


#define KeyChainGroup @"38BRA5YXHF.com.54rich.91tj.cn"

#define kVisitURL @"http://www.91taojin.com.cn/index.php?d=admin&c=page&m=detail&id=6"


#define kSafeReleaseOBJ(obj) if (!__has_feature(objc_arc)) {if(obj) [obj release],obj = nil; }
#define kSafeRemoveArrayOBJ(obj) if (obj != nil) [obj removeAllObjects];
#define kG4Screen CGSizeMake(640, 960)
#define kG5Screen CGSizeMake(640, 1136)
#define kCDScreen [[UIScreen mainScreen] currentMode].size
#define kIsRetinaDevice ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(kG4Screen, kCDScreen)|| CGSizeEqualToSize(kG5Screen, kCDScreen)) : NO)
#define kRetinaScale (kIsRetinaDevice ? 0.5 : 0.5)


#define GetImage(name)  [UIImage imageNamed:name]
#define kOffX_float 7.0
#define kOffY_float 17.0
#define kCellHeight 55.0

#endif
