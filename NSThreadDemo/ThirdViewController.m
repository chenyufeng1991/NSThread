

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
    

}
@end
