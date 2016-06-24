//
//  ViewController.m
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

#import "ViewController.h"
#import "HLCycleScrollView.h"

@interface ViewController () <HLCycleScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    UIImageView *backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg.jpg"]];
    backgroundView.frame = self.view.bounds;
    [self.view addSubview:backgroundView];
    
    UIScrollView *demoContainerView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    demoContainerView.contentSize = CGSizeMake(self.view.frame.size.width, 1200);
    [self.view addSubview:demoContainerView];
    
    self.title = @"轮播Demo";

    
    // 情景一：采用本地图片实现
    NSArray *imageNames = @[@"pic1.jpg",
                            @"pic2.jpg",
                            @"pic3.jpg",
                            @"pic4.jpg"
                            ];
    
    // 情景二：采用网络图片实现
    NSArray *imagesURLStrings = @[
                                  @"http://7xk68o.com1.z0.glb.clouddn.com/1.jpg",
                                  @"http://7xk68o.com1.z0.glb.clouddn.com/2.jpg",
                                  @"http://7xk68o.com1.z0.glb.clouddn.com/3.jpg",
                                  @"http://7xk68o.com1.z0.glb.clouddn.com/4.jpg",
                                  @"http://7xk68o.com1.z0.glb.clouddn.com/5.jpg"
                           ];
    
    // 情景三：图片配文字
    NSArray *titles = @[@"新建交流QQ群：555041657 ",
                        @"感谢您的支持，如果下载的",
                        @"如果代码在使用过程中出现问题",
                        @"您可以发邮件到271072547@qq.com"
                        ];
    
    CGFloat w = self.view.bounds.size.width;
    
    

// >>>>>>>>>>>>>>>>>>>>>>>>> demo轮播图1 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
    // 本地加载 --- 创建不带标题的图片轮播器
    HLCycleScrollView *cycleScrollView = [HLCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 64, w, 180) shouldInfiniteLoop:YES imageNamesGroup:imageNames];
    cycleScrollView.delegate = self;
    cycleScrollView.pageControlStyle = HLCycleScrollViewPageContolStyleAnimated;
    [demoContainerView addSubview:cycleScrollView];
    cycleScrollView.scrollDirection = UICollectionViewScrollDirectionVertical;
    //         --- 轮播时间间隔，默认1.0秒，可自定义
    //cycleScrollView.autoScrollTimeInterval = 4.0;
    
    
// >>>>>>>>>>>>>>>>>>>>>>>>> demo轮播图2 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
    // 网络加载 --- 创建带标题的图片轮播器
    HLCycleScrollView *cycleScrollView2 = [HLCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 280, w, 180) delegate:self placeholderImage:[UIImage imageNamed:@"placeholder"]];
    
    cycleScrollView2.pageControlAliment = HLCycleScrollViewPageContolAlimentRight;
    cycleScrollView2.titlesGroup = titles;
    cycleScrollView2.currentPageDotColor = [UIColor whiteColor]; // 自定义分页控件小圆标颜色
    [demoContainerView addSubview:cycleScrollView2];
    
    //         --- 模拟加载延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        cycleScrollView2.imageURLStringsGroup = imagesURLStrings;
    });
    
    /*
     block监听点击方式
     
     cycleScrollView2.clickItemOperationBlock = ^(NSInteger index) {
        NSLog(@">>>>>  %ld", (long)index);
     };
     
     */
    
    
// >>>>>>>>>>>>>>>>>>>>>>>>> demo轮播图3 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
    // 网络加载 --- 创建自定义图片的pageControlDot的图片轮播器
    HLCycleScrollView *cycleScrollView3 = [HLCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 500, w, 180) delegate:self placeholderImage:[UIImage imageNamed:@"placeholder"]];
    cycleScrollView3.currentPageDotImage = [UIImage imageNamed:@"pageControlCurrentDot"];
    cycleScrollView3.pageDotImage = [UIImage imageNamed:@"pageControlDot"];
    cycleScrollView3.imageURLStringsGroup = imagesURLStrings;
    
    [demoContainerView addSubview:cycleScrollView3];
    
// >>>>>>>>>>>>>>>>>>>>>>>>> demo文字轮播4 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
    // 网络加载 --- 创建只上下滚动展示文字的轮播器
    HLCycleScrollView *cycleScrollView4 = [HLCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 750, w, 40) delegate:self placeholderImage:nil];
    cycleScrollView4.scrollDirection = UICollectionViewScrollDirectionVertical;
    cycleScrollView4.onlyDisplayText = YES;
    
    NSMutableArray *titlesArray = [NSMutableArray new];
    [titlesArray addObject:@"纯文字上下滚动轮播"];
    [titlesArray addObject:@"纯文字上下滚动轮播 -- demo轮播图4"];
    [titlesArray addObjectsFromArray:titles];
    cycleScrollView4.titlesGroup = [titlesArray copy];
    
    [demoContainerView addSubview:cycleScrollView4];
    
// >>>>>>>>>>>>>>>>>>>>>>>>> demo文字轮播5 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
    // 网络加载 --- 创建只上下滚动展示文字的轮播器
    HLCycleScrollView *cycleScrollView5 = [HLCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 800, w, 40) delegate:self placeholderImage:nil];
    cycleScrollView5.scrollDirection = UICollectionViewScrollDirectionVertical;
    cycleScrollView5.onlyDisplayText = YES;
    
    NSMutableArray* titlesGroup = [NSMutableArray new];
    for (NSString* titleStr in titles) {
        NSAttributedString* title = [[NSMutableAttributedString alloc] initWithString:titleStr attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14.f],NSForegroundColorAttributeName:[UIColor colorWithRed:arc4random()%256/256.f green:arc4random()%256/256.f blue:arc4random()%256/256.f alpha:1.f]}];
        [titlesGroup addObject:title];
    }

    cycleScrollView5.titlesGroup = titlesGroup;
    
    [demoContainerView addSubview:cycleScrollView5];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // 如果你发现你的CycleScrollview会在viewWillAppear时图片卡在中间位置，你可以调用此方法调整图片位置
//    [你的CycleScrollview adjustWhenControllerViewWillAppera];
}


#pragma mark - HLCycleScrollViewDelegate

- (void)cycleScrollView:(HLCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"---点击了第%ld张图片", (long)index);
    
    [self.navigationController pushViewController:[NSClassFromString(@"DemoVCWithXib") new] animated:YES];
}


/*
 
// 滚动到第几张图回调
- (void)cycleScrollView:(HLCycleScrollView *)cycleScrollView didScrollToIndex:(NSInteger)index
{
    NSLog(@">>>>>> 滚动到第%ld张图", (long)index);
}
 
 */

@end
