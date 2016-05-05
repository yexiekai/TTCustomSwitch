//
//  ViewController.m
//  TTCustomSegmentedControl
//
//  Created by yxk on 16/3/21.
//  Copyright © 2016年 Insigma HengTian Software Ltd. All rights reserved.
//

#import "ViewController.h"
#import "TTCustomSegmentedControl.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TTCustomSegmentedControl *seg = [[TTCustomSegmentedControl alloc] initWithFrame:CGRectMake(100, 100, 160, 30)];
    [self.view addSubview:seg];
    
    seg.leftAction = ^{NSLog(@"left");};
    seg.rightAction = ^{NSLog(@"right");};
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
