//
//  DemoVCWithXib.m
//  HLCycleScrollView
//
//  Created by LHL on 14/12/3.
//  Copyright © 2014年 LHL. All rights reserved.
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

#import "DemoVCWithXib.h"
#import "HLCycleScrollView.h"

@interface DemoVCWithXib () <HLCycleScrollViewDelegate>

@property (weak, nonatomic) IBOutlet HLCycleScrollView *bannerView;
@end

@implementation DemoVCWithXib

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    NSArray *imagesURLStrings = @[
                                  @"http://7xk68o.com1.z0.glb.clouddn.com/1.jpg",
                                  @"http://7xk68o.com1.z0.glb.clouddn.com/2.jpg",
                                  @"http://7xk68o.com1.z0.glb.clouddn.com/3.jpg",
                                  @"http://7xk68o.com1.z0.glb.clouddn.com/4.jpg",
                                  @"http://7xk68o.com1.z0.glb.clouddn.com/5.jpg"
                                  ];
    
    // 图片配文字
    NSArray *titles = @[@"感谢您的支持，如果下载的",
                        @"如果代码在使用过程中出现问题",
                        @"您可以发邮件到271072547@qq.com",
                        @"感谢您的支持"
                        ];
    

    self.bannerView.imageURLStringsGroup = imagesURLStrings;
    self.bannerView.pageControlAliment = HLCycleScrollViewPageContolAlimentRight;
    self.bannerView.delegate = self;
    self.bannerView.titlesGroup = titles;
    self.bannerView.currentPageDotColor = [UIColor yellowColor]; // 自定义分页控件小圆标颜色
    self.bannerView.placeholderImage = [UIImage imageNamed:@"placeholder"];
    
    
    
    HLCycleScrollView *banner2 = [HLCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 140) delegate:nil placeholderImage:nil];
    banner2.pageControlAliment = HLCycleScrollViewPageContolAlimentRight;
    banner2.imageURLStringsGroup = imagesURLStrings;
    banner2.titlesGroup = titles;
    [self.view addSubview:banner2];

}


#pragma mark - HLCycleScrollViewDelegate

- (void)cycleScrollView:(HLCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
