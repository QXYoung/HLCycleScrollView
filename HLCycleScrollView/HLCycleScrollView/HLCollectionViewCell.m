//
//  HLCollectionViewCell.m
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


#import "HLCollectionViewCell.h"
#import "UIView+HLExtension.h"

@implementation HLCollectionViewCell
{
    __weak UILabel *_titleLabel;
}


- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setupImageView];
        [self setupTitleLabel];
    }
    
    return self;
}

- (void)setTitleLabelBackgroundColor:(UIColor *)titleLabelBackgroundColor
{
    _titleLabelBackgroundColor = titleLabelBackgroundColor;
    _titleLabel.backgroundColor = titleLabelBackgroundColor;
}

- (void)setTitleAttributedString:(NSAttributedString*)titleAttributedString{
    _titleAttributedString = titleAttributedString;
    _titleLabel.attributedText = _titleAttributedString;
    if (_titleLabel.hidden) {
        _titleLabel.hidden = NO;
    }
}

- (void)setTitleLabelTextColor:(UIColor *)titleLabelTextColor
{
    _titleLabelTextColor = titleLabelTextColor;
    _titleLabel.textColor = titleLabelTextColor;
}

- (void)setTitleLabelTextFont:(UIFont *)titleLabelTextFont
{
    _titleLabelTextFont = titleLabelTextFont;
    _titleLabel.font = titleLabelTextFont;
}

- (void)setupImageView
{
    UIImageView *imageView = [[UIImageView alloc] init];
    _imageView = imageView;
    [self.contentView addSubview:imageView];
}

- (void)setupTitleLabel
{
    UILabel *titleLabel = [[UILabel alloc] init];
    _titleLabel = titleLabel;
    _titleLabel.hidden = YES;
    [self.contentView addSubview:titleLabel];
}

- (void)setTitle:(NSString *)title
{
    _title = [title copy];
    _titleLabel.text = [NSString stringWithFormat:@"   %@", title];
    if (_titleLabel.hidden) {
        _titleLabel.hidden = NO;
    }
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (self.onlyDisplayText) {
        _titleLabel.frame = self.bounds;
    } else {
        _imageView.frame = self.bounds;
        CGFloat titleLabelW = self.sd_width;
        CGFloat titleLabelH = _titleLabelHeight;
        CGFloat titleLabelX = 0;
        CGFloat titleLabelY = self.sd_height - titleLabelH;
        _titleLabel.frame = CGRectMake(titleLabelX, titleLabelY, titleLabelW, titleLabelH);
    }
}

@end
