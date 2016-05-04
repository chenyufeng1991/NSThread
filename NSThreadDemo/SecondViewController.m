

//
//  SecondViewController.m
//  NSThreadDemo
//
//  Created by chenyufeng on 5/4/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (nonatomic, strong) NSThread *myThread;

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

#if 0
    NSThread *thread1 = [[NSThread alloc] initWithTarget:self selector:@selector(run1) object:nil];
    thread1.name = @"thread1";
    [thread1 start];
#endif

#if 0
    //匿名线程
    [NSThread detachNewThreadSelector:@selector(run1) toTarget:self withObject:nil];
#endif

#if 0
    //后台创建一个线程来执行任务，需要在调用的方法中使用自动释放池
    [self performSelectorInBackground:@selector(run3) withObject:nil];
#endif

#if 0
    //主线程调用方法
    [self performSelector:@selector(run2)];
    [self performSelector:@selector(run2) withObject:nil afterDelay:2];
    [self performSelectorOnMainThread:@selector(run2) withObject:nil waitUntilDone:YES];
    [self performSelector:@selector(run2) withObject:nil];
#endif

}

- (void)run1
{
    NSLog(@"主线程1：%@，当前线程1：%@",[NSThread mainThread],[NSThread currentThread]);
}

//主线程中调用该方法
- (void)run2
{
     NSLog(@"主线程2：%@，当前线程2：%@",[NSThread mainThread],[NSThread currentThread]);
}

- (void)run3
{
    @autoreleasepool {
        NSLog(@"主线程3：%@，当前线程3：%@",[NSThread mainThread],[NSThread currentThread]);
    }
}

@end
