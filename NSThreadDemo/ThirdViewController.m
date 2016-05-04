

//
//  ThirdViewController.m
//  NSThreadDemo
//
//  Created by chenyufeng on 5/4/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

//测试在子线程中调用主线程更新UI
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    NSThread *subThread = [[NSThread alloc] initWithTarget:self selector:@selector(run) object:nil];
    [subThread start];
}

- (void)run
{
    NSLog(@"主线程1：%@，当前线程1：%@",[NSThread mainThread],[NSThread currentThread]);
    //以下方法需要在子线程中调用
    [self performSelectorOnMainThread:@selector(invocationMainThread) withObject:nil waitUntilDone:YES];
}

- (void)invocationMainThread
{
    NSLog(@"主线程2：%@，当前线程2：%@",[NSThread mainThread],[NSThread currentThread]);
    NSLog(@"调用主线程更新UI");
}


@end
