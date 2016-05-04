
//
//  FirstViewController.m
//  NSThreadDemo
//
//  Created by chenyufeng on 5/4/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    //获取当前线程
    NSThread *current = [NSThread currentThread];
    NSLog(@"当前线程为 %@",current);
    
    //初始化线程
    NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(run) object:nil];

    //设置线程的优先级（0.0-1.0）
    thread.threadPriority = 1.0;
    thread.name = @"新线程1";
    [thread start];

}

- (void)run
{
    NSLog(@"线程执行");

    //获取当前线程
    NSThread *current = [NSThread currentThread];
    NSLog(@"当前线程为 %@",current);

    //线程休眠，可以模拟耗时操作
    [NSThread sleepForTimeInterval:2];

    //获取主线程
    NSThread *mainThread = [NSThread mainThread];
    NSLog(@"子线程中获得主线程 %@",mainThread);

}




@end
