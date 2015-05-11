//
//  ViewController.m
//  GCDTest22
//
//  Created by keyrun on 14-7-17.
//  Copyright (c) 2014年 keyrun. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

NSString *const aString = @"SUNNOTICFY";
@interface ViewController ()
{
//    NSString *aString;
    NSString* (^secBlock )(NSString *)  ;
    ClassBlock copyBlock ;
    
    NSString *testStr ;

}
@end
static NSString *staticStr =@"static" ;     // 静态实例变量

NSString *exterString = @"123";
@implementation ViewController
/**
*  asd
*
*  @return asd
*/
+(id)shareViewController{
    static dispatch_once_t once ;
    static ViewController *vc =nil;
    dispatch_once(&once, ^{
        vc =[[ViewController alloc] initWithNibName:nil bundle:nil];
    });

    return vc;
}
//-(void)objcMethod2Blocl:(on)
-(void)objcMethod:(NSString *(^)(NSString *)) square{
    square = ^(NSString *aStr){
        return [aStr stringByAppendingString:@"AAAA"];
    };
    square(@"assad");
}
-(void)viewWillAppear:(BOOL)animated{
    NSOperationQueue *taskQueue =[[NSOperationQueue alloc] init];
    NSBlockOperation *blockTask =[NSBlockOperation blockOperationWithBlock:^{
        [NSThread sleepForTimeInterval:2];
        NSLog(@"_block Operation__");
    }];
    NSInvocationOperation *invocationTask =[[NSInvocationOperation alloc] initWithTarget:self selector:@selector(doneOperation) object:nil];
    [taskQueue addOperationWithBlock:^{
        NSLog(@"  with block");
    }];
    [blockTask addDependency:invocationTask];
    [taskQueue addOperation:blockTask];
    [taskQueue addOperation:invocationTask];
    
    [self impleteAMethod];
}
-(void)doneOperation{
    [NSThread sleepForTimeInterval:3];
//    NSLog(@"___operation One__ %f  %@",kmainScreenWidth,kShareTitle);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    secBlock = ^(NSString *str){
        return [str stringByAppendingString:@"ABC"];
    };
    NSLog(@"String = %@ ",secBlock(@"NNN"));
    [self objcMethod:secBlock];
    
    oneBlock block = ^( int a,NSString *string){
        return a;
    };
    oneBlock secBlock = ^(int a ,NSString *aaa){
        return a*a ;
    };
    NSLog(@"block = %d  block2 = %d",block(1 ,@"asd") ,secBlock(2 ,@"asas"));
    
    [self doSomethingWith:nil];
    
    [[NSNotificationCenter defaultCenter]postNotificationName:aString object:nil userInfo:nil];
    UIImageView * imageV =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"psb.PNG"]];
    imageV.frame  =CGRectMake(100, 100, 100, 100);
    [self.view addSubview:imageV];
    [UIView animateWithDuration:3.0f animations:^{
//        imageV.transform = CGAffineTransformIdentity ;
        imageV.transform = CGAffineTransformMakeRotation(0.5);
    } completion:^(BOOL finished) {
//        imageV.layer.transform = CATransform3DMakeRotation(0.5, 0.3, 0.3, 0.3);
//        CAAnimation *animation = catr
//        imageV.layer addAnimation:<#(CAAnimation *)#> forKey:<#(NSString *)#>
//       CATransition *transiton = catrans
        
    }];
//    imageV.transform = CGAffineTransformIdentity ;
//    imageV.layer.transform = CATransform3DIdentity ;
    dispatch_queue_t bgQueue = dispatch_queue_create("com.sun.cn", DISPATCH_QUEUE_PRIORITY_DEFAULT);
    dispatch_async(dispatch_get_main_queue(), ^{
        NSString *str =@"asdasd";
        dispatch_async(bgQueue, ^{
            NSLog(@" str = %@ ",str);
        });
    });
   
    NSArray *array =@[@"AAA" ,@"BBB" ,@"CCC"];
    dispatch_queue_t  queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    for (id obj in array) {
        dispatch_async(queue, ^{
//            [self doSomethingWith:obj];

        });
    }
    
    dispatch_group_t group =dispatch_group_create();
    for (id obj in array)
        dispatch_group_async(group, queue, ^{
//            [self doSomethingWith:obj];
        });
//    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
//    NSLog(@" wait end");
    
    dispatch_group_notify(group, queue, ^{        // group 里面执行完 再执行notify
      NSLog(@" wait end2");
    });
    
    dispatch_group_async(group, queue, ^{
        [NSThread sleepForTimeInterval:1.0];
        NSLog(@"__1_");
    });
    dispatch_group_async(group, queue, ^{
        [NSThread sleepForTimeInterval: 2.0];
        NSLog(@"__2__");
    });
    dispatch_group_async(group, queue, ^{          // group 里面的  按加入顺序执行
        [NSThread sleepForTimeInterval:3.0];
        NSLog(@"__3__");
    });
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        NSLog(@"update UI");
    });
    
    dispatch_queue_t queue2 = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue2, ^{
        
    dispatch_apply(array.count, queue2, ^(size_t index) {      // apply  要等它执行完 才执行后面的
        [self doOtherthingWith:[array objectAtIndex:index]];
    });
        NSLog(@"_wait2 end__");
    });
    
    dispatch_queue_t barryQueue = dispatch_queue_create("com.sun2.cn", DISPATCH_QUEUE_PRIORITY_DEFAULT);
    dispatch_async(barryQueue, ^{
        [NSThread sleepForTimeInterval:2.0];
        NSLog(@" dispatch_asy1");
    });
    dispatch_async(barryQueue, ^{
        [NSThread sleepForTimeInterval:4.0];
        NSLog(@" dispatch_asy2");
    });
    dispatch_barrier_async(barryQueue, ^{       // barryier 在它之前的先执行，在它后面的等它执行完再执行
        NSLog(@" dispatch_asy_end");
    });
    
    dispatch_async(barryQueue, ^{
        NSLog(@" dispatch_asy3");
    });
    
    
    //信号量
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(3);
//    dispatch_semaphore_t semaphore2 = dispatch_semaphore_create(5);
    dispatch_group_t groupSem = dispatch_group_create();
    dispatch_queue_t semQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    for ( int i=0; i < 9; i++) {
        NSLog(@"22 %i",i);
             //等待信号， 将信号量减1  ,先wait消耗信号量到0，等待signal释放可用信号，再执行循环
        dispatch_group_async(groupSem, semQueue, ^{
            NSLog(@"%i",i);
            sleep(2);
            dispatch_semaphore_signal(semaphore);            //发送信号 让信号量加1, 2s后依次释放4个信号，此时循环接着进行消耗这4个信号
        });
        dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);      //将初始化的信号量减1   会阻塞线程并且检测信号量的值,直到信号量值大于0才会开始往下执行,同时对信号量执行-1操作.  此处当信号量减4次到0时 就会停住 不再执行循环
    }
    dispatch_group_wait(groupSem, DISPATCH_TIME_FOREVER);
    
    
//    dispatch_source_create(DISPATCH_SOURCE_TYPE_DATA_ADD, 0, 0, dispatch_get_main_queue());
    
    firstBlock =^int (int a ,NSString *Str){
        NSLog(@" first Block ");
        return a;
    };

    [self chargeMyPhone :^(int a){
        NSLog(@"___2222 %d",a);
    }];
    [self chargePhoneBlcok:^NSString *(NSString *oneStr, NSString *secStr) {
        NSLog(@"_OneString_%@_",oneStr);
        return [oneStr stringByAppendingString:secStr];
    }];
    ClassBlock classBlock =^NSString *(NSString *one ,NSString *two) {
        NSLog(@" Class Block ");
        return [one stringByAppendingString:two];
    };
    classBlock(@"YY" ,@"UU");
    firstBlock(5 ,@"CTU");
    
//    CGPoint
    MyStudent student ={12 ,1.8,"aaa"};
    student.age = 19 ;
    NSLog(@" Season == %lu %d " ,(unsigned long)winter,MyEnumThree);

    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error ;
    NSArray *paths =NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) ;
    NSString *doucmentsDirectory = [paths objectAtIndex:0];
    pathOfUserPlist = [doucmentsDirectory stringByAppendingPathComponent:@"BPushConfig.plist"];
    
    NSFileManager *fileManager2 =[NSFileManager defaultManager];
    NSError *error2 ;
    NSArray *paths2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documents2 =[paths2 objectAtIndex:0];
    pathOfUserPlist = [documents2 stringByAppendingPathComponent:@"BPushConfig.plist"];
    
    NSString *filePath2 =[[NSBundle mainBundle] pathForResource:@"BPushConfig" ofType:@"plist"];
    NSLog(@" filePath2  == %@ ",filePath2);
    [fileManager2 copyItemAtPath:filePath2 toPath:pathOfUserPlist error:&error2];
    
    NSArray *newPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSLog(@" Get Document path= %@",[newPaths objectAtIndex:0]);
    NSString *newFileName =[[newPaths objectAtIndex:0] stringByAppendingString:@"myfile"];
    NSString *content =@"aaaaaa";
    NSData *contentData =[content dataUsingEncoding:NSASCIIStringEncoding];
    if ([contentData writeToFile:newFileName atomically:YES]) {
        NSLog(@" <<< write content OK ");
    }
    
    if ([fileManager fileExistsAtPath:pathOfUserPlist] == NO) {
        NSLog(@"   不存在文件 ") ;
        NSString *filePath =[[NSBundle mainBundle] pathForResource:@"BPushConfig" ofType:@"plist"];
        if ([fileManager copyItemAtPath:filePath toPath:pathOfUserPlist error:&error] == NO) {
            NSAssert1(0, @"fail to copy data error '%@'", [error description]);
        }
    }
    copyData = [[NSMutableDictionary alloc] initWithContentsOfFile:pathOfUserPlist];
    NSLog(@"  本地文件数据  %@ ",copyData);
}
-(void)chargePhoneBlcok:(ClassBlock) cBlock{
//    NSString *str = cBlock(@"AA" ,@"VV");
    cBlock(@"AA" ,@"BB");
    copyBlock = [cBlock copy];
//    firstBlock(2,@"AA");
//    NSLog(@"str =%@ ",str);
}
-(void)chargeMyPhone:(void(^)(int))finishBlock{
    double delayTime = 2.0 ;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayTime * NSEC_PER_SEC) ;
    dispatch_after(popTime, dispatch_get_main_queue(), ^{
        NSLog(@"__Done Charge__");
        finishBlock (2);
        copyBlock(@"AA" ,@"MM");
        SecViewController *sec =[[SecViewController alloc] init];
        [self presentViewController:sec animated:YES completion:^{
            
        }];
    });
    
    dispatch_time_t opotime =dispatch_time(DISPATCH_TIME_NOW, 3.0 *NSEC_PER_SEC) ;
    dispatch_after(opotime, dispatch_get_main_queue(), ^{
        
    });
    
    dispatch_time_t ooptime =dispatch_time(DISPATCH_TIME_NOW, 5.0*NSEC_PER_SEC);
    dispatch_after(ooptime, dispatch_get_main_queue(), ^{
        
    });
    
    //dispatch_after 只是延迟提交block ，并不是延迟执行block
    dispatch_queue_t queue = dispatch_queue_create("sunsun.com", DISPATCH_QUEUE_CONCURRENT);
    NSLog(@" begin add blcok");
    dispatch_async(queue, ^{
        sleep(10);
        NSLog(@" first blcok one");
    });
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@" after blcok");
    });
    //执行顺序 ， begin ，first ，after
    //dispatch_time    NSEC: 纳秒  USEC:微妙 SEC:秒 PER:每
    
}
-(void)testGCDSource{
    dispatch_source_t source = dispatch_source_create(DISPATCH_SOURCE_TYPE_DATA_ADD, 0, 0, dispatch_get_main_queue());
    dispatch_source_set_event_handler(source, ^{

    });
}

-(void)doOtherthingWith:(id) obj{
    NSLog(@" waitting 2....");

}
-(void)doSomethingWith:(id)obj{
   
    NSLog(@"waitting...");
    dispatch_source_t source = dispatch_source_create(DISPATCH_SOURCE_TYPE_DATA_ADD, 0, 0, dispatch_get_global_queue(0, 0));
    dispatch_source_set_event_handler(source, ^{
        
    });
    dispatch_resume(source);
    dispatch_apply(3, dispatch_get_global_queue(0, 0), ^(size_t index) {
        dispatch_source_merge_data(source, 1) ;
    });
    
    dispatch_group_t group  = dispatch_group_create();
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(5);
    dispatch_queue_t queue = dispatch_queue_create("com.myself.cn", 0);
    for ( int i= 0;  i< 10; i++) {
        NSLog(@" before wait...");
        dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
        dispatch_group_async(group, queue, ^{
            NSLog(@" %d ",i);
//            sleep(2) ;
            dispatch_semaphore_signal(semaphore);
        });
//        dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    }
    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
    
    NSArray *arr =@[@"A",@"B",@"C",@"D"];
    dispatch_source_t sourceRead = dispatch_source_create(DISPATCH_SOURCE_TYPE_DATA_ADD, 0, 0, dispatch_get_global_queue(0, 0));
    dispatch_source_set_event_handler(sourceRead, ^{      //创建监听响应事件
        size_t estimated = dispatch_source_get_data(sourceRead);
        NSLog(@"  estimated == %lu ",estimated);
    });
    dispatch_resume(sourceRead);     //默认是挂起状态  手动开始监听
    dispatch_queue_t minQueue = dispatch_get_global_queue(0, 0);
    dispatch_apply(arr.count, minQueue, ^(size_t i) {
        NSLog(@" received %@ ",arr[i]);
//        sleep( 2.0f);
        dispatch_source_merge_data(sourceRead, 1);  //触发监听
        [NSThread sleepForTimeInterval:2.0f];
        
    });
    dispatch_source_cancel(sourceRead) ;
    
    /*
    dispatch_group_t group2 = dispatch_group_create() ;
    dispatch_semaphore_t semaphore2 = dispatch_semaphore_create(5);
    dispatch_queue_t queue2 = dispatch_queue_create("viewController", 0);
    for (int i=0; i <10; i++) {
        dispatch_semaphore_wait(semaphore2, DISPATCH_TIME_FOREVER);
        dispatch_group_async(group2, queue2, ^{
            NSLog(@" i == %d",i);
            sleep(1);
            dispatch_semaphore_signal(semaphore2);
        });
    }
    dispatch_group_wait(group2, DISPATCH_TIME_FOREVER);
     */
    
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
//    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 3.0 * NSEC_PER_SEC, 1.0f * NSEC_PER_SEC);
    dispatch_source_set_timer(timer, dispatch_walltime(NULL, 0), 1.0f *NSEC_PER_SEC, 0.0);
    dispatch_source_set_event_handler(timer, ^{
        NSLog(@" 每隔3秒执行一次 ");
    });
    dispatch_resume(timer);
    
    
}




-(void) dispatchResume{
    dispatch_queue_t queue = dispatch_queue_create("com.bigsun.cn", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:5];
        NSLog(@" After 5 seconds...");
    });
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:5];
        NSLog(@" After 5 seconds again...");
    });
    NSLog(@"sleep 1 second...");
    [NSThread sleepForTimeInterval:1];
    NSLog(@" suspend...");
    dispatch_suspend(queue);
    
    NSLog(@"sleep 10 second...");
    [NSThread sleepForTimeInterval:10];
    
    NSLog(@" resume...");
    dispatch_resume(queue);
//    dispatch_suspend并不会立即暂停正在运行的block，而是在当前block执行完成后，暂停后续的block执行。
/*
 2015-04-01 00:32:09.903 GCDTest[47201:1883834] sleep 1 second...
 2015-04-01 00:32:10.910 GCDTest[47201:1883834] suspend...
 2015-04-01 00:32:10.910 GCDTest[47201:1883834] sleep 10 second...
 2015-04-01 00:32:14.908 GCDTest[47201:1883856] After 5 seconds...
 2015-04-01 00:32:20.911 GCDTest[47201:1883834] resume...
 2015-04-01 00:32:25.912 GCDTest[47201:1883856] After 5 seconds again...
 */
}


-(void) dispatchApply{    //dispatch_apply的作用是在一个队列（串行或并行）上“运行”多次block，其实就是简化了用循环去向队列依次添加block任务。
    
    dispatch_queue_t queue = dispatch_queue_create("com.bigsun.cn", DISPATCH_QUEUE_CONCURRENT);
    dispatch_apply(5, queue, ^(size_t i) {
        NSLog(@" apply loop : %zu",i);
    });
    NSLog(@" after apply");
    
    //任务提交到异步队列去  但会等待apply 执行完（形成阻塞） 才会向下继续执行，

}


//dispatchbarrier\(a)sync只在自己创建的并发队列上有效，在全局(Global)并发队列、串行队列上，效果跟dispatch_(a)sync效果一样。
















- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


@implementation ViewController (SSViewController)

-(void) impleteAMethod {
//    NSString *filePath = [[NSBundle mainBundle] pathForResouse:@"re" ofType:@"xml"];
    NSString *filePath =[[NSBundle mainBundle] pathForResource:@"BPushConfig" ofType:@"plist"];
    NSMutableDictionary* dict =  [ [ NSMutableDictionary alloc ] initWithContentsOfFile:filePath ];
    NSLog(@" Category Method  %@ ",dict);
}

@end


