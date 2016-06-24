//
//  UIView+HLExtension.h
//  HLRefreshView
//
//  Created by lhl on 2014-12-21
//  Copyright (c) 2014年 LHL. All rights reserved.
//

/*
 
 *********************************************************************************
 *
 * ❤️❤️❤️ 新建HLCycleScrollView交流QQ群：555041657 ❤️❤️❤️
 *
 * 在您使用此自动轮播库的过程中如果出现bug请及时以以下任意一种方式联系我，我会及时修复bug并
 * 帮您解决问题。
 * 新浪微博:HL_NetLover
 * Email : 271072547@qq.com
 * GitHub: https://github.com/MrUncle
 *
 */

#import <UIKit/UIKit.h>

#define SDColorCreater(r, g, b, a) [UIColor colorWithRed:(r / 255.0) green:(g / 255.0) blue:(b / 255.0) alpha:a]


@interface UIView (HLExtension)

@property (nonatomic, assign) CGFloat sd_height;
@property (nonatomic, assign) CGFloat sd_width;

@property (nonatomic, assign) CGFloat sd_y;
@property (nonatomic, assign) CGFloat sd_x;

@end
