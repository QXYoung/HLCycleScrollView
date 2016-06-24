//
//  HLCollectionViewCell.h
//  HLCycleScrollView
//
//  Created by lhl on 15-1-02.
//  Copyright (c) 2015年 LHL. All rights reserved.
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

@interface HLCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic  ) UIImageView *imageView;

/** 普通String */
@property (copy, nonatomic  ) NSString    *title;

/** 设置属性字体 */
@property (nonatomic, strong) NSAttributedString*      titleAttributedString;

@property (nonatomic, strong) UIFont      *titleLabelTextFont;
@property (nonatomic, strong) UIColor     *titleLabelBackgroundColor;
@property (nonatomic, assign) CGFloat     titleLabelHeight;
@property (nonatomic, strong) UIColor     *titleLabelTextColor;
@property (nonatomic, assign) BOOL        hasConfigured;

/** 只展示文字轮播 */
@property (nonatomic, assign) BOOL onlyDisplayText;

@end
