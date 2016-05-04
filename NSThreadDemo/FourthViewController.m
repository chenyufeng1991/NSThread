
//
//  FourthViewController.m
//  NSThreadDemo
//
//  Created by chenyufeng on 5/4/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "FourthViewController.h"
#import "MyThread.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

//可以自己写一个子类，继承自NSThread，需要重写main方法
/**
 *  执行的代码是在main中的，而不是使用@selector.
 使用main方法，线程中执行的方法是属于对象本身的，这样可以在任何其他需要使用这个线程方法的地方使用，而不用再一次实现某个方法。
 
 而其他的直接NSThread的创建线程，线程内执行的方法都是在当前的类文件里面的。
 */
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    MyThread *thread = [[MyThread alloc] init];
    [thread start];
}

@end
