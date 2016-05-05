//
//  TTCustomSegmentedControl.h
//  TTCustomSegmentedControl
//
//  Created by yxk on 16/3/21.
//  Copyright © 2016年 Insigma HengTian Software Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTCustomSegmentedControl : UIView

@property (nonatomic, copy, nullable) void (^leftAction)(void);
@property (nonatomic, copy, nullable) void (^rightAction)(void);

@end
