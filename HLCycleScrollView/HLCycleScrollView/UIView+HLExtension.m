//
//  UIView+HLExtension.m
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

/*
 
 *********************************************************************************
 *
 * 在您使用此自动轮播库的过程中如果出现bug请及时以以下任意一种方式联系我，我会及时修复bug并
 * 帮您解决问题。
 * 新浪微博:HL_NetLover
 * Email : 271072547@qq.com
 * GitHub: https://github.com/MrUncle
 *
 */


#import "UIView+HLExtension.h"

@implementation UIView (HLExtension)

- (CGFloat)sd_height
{
    return self.frame.size.height;
}

- (void)setSd_height:(CGFloat)sd_height
{
    CGRect temp = self.frame;
    temp.size.height = sd_height;
    self.frame = temp;
}

- (CGFloat)sd_width
{
    return self.frame.size.width;
}

- (void)setSd_width:(CGFloat)sd_width
{
    CGRect temp = self.frame;
    temp.size.width = sd_width;
    self.frame = temp;
}


- (CGFloat)sd_y
{
    return self.frame.origin.y;
}

- (void)setSd_y:(CGFloat)sd_y
{
    CGRect temp = self.frame;
    temp.origin.y = sd_y;
    self.frame = temp;
}

- (CGFloat)sd_x
{
    return self.frame.origin.x;
}

- (void)setSd_x:(CGFloat)sd_x
{
    CGRect temp = self.frame;
    temp.origin.x = sd_x;
    self.frame = temp;
}



@end
