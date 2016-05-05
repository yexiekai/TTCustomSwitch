//
//  TTCustomSegmentedControl.m
//  TTCustomSegmentedControl
//
//  Created by yxk on 16/3/21.
//  Copyright © 2016年 Insigma HengTian Software Ltd. All rights reserved.
//

#import "TTCustomSegmentedControl.h"

@interface TTCustomSegmentedControl ()
{
    CGRect kFrame;
    UIView *kSegBgView;
    UIButton *kLeft;
    UIButton *kRight;
}

@end

@implementation TTCustomSegmentedControl

//- (instancetype)init
//{
//    if (self = [super init]) {
//        
//    }
//    
//    return self;
//}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    kFrame = frame;
    self.layer.borderWidth = 0.5;
    self.layer.cornerRadius = 5;
    [self initSegmentedControl];
    
    return self;
}

- (void)initSegmentedControl
{
    kSegBgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kFrame.size.width/2, kFrame.size.height)];
    kSegBgView.layer.cornerRadius = 5;
    kSegBgView.backgroundColor = [UIColor blueColor];
    [self addSubview:kSegBgView];
    
    kLeft = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, kFrame.size.width/2, kFrame.size.height)];
    [kLeft setTitle:@"left" forState:UIControlStateNormal];
    [kLeft addTarget:self action:@selector(leftSelected) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:kLeft];
    
    kRight = [[UIButton alloc] initWithFrame:CGRectMake(kFrame.size.width/2, 0, kFrame.size.width/2, kFrame.size.height)];
    [kRight setTitle:@"right" forState:UIControlStateNormal];
    [kRight setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [kRight addTarget:self action:@selector(rightSelected) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:kRight];
}

- (void)leftSelected
{
    [UIView animateWithDuration:0.3 animations:^{
        kSegBgView.frame = CGRectMake(0, 0, kFrame.size.width/2, kFrame.size.height);
    }];
    [kRight setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [kLeft setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    if (self.leftAction) {
        self.leftAction();
    }
}

- (void)rightSelected
{
    [UIView animateWithDuration:0.3 animations:^{
        kSegBgView.frame = CGRectMake(kFrame.size.width/2, 0, kFrame.size.width/2, kFrame.size.height);
    }];
    [kLeft setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [kRight setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    if (self.rightAction) {
        self.rightAction();
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
