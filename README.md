# HLCycleScrollView（新建QQ交流群：555041657）
## ☆☆☆ “iOS图片、文字轮播器” ☆☆☆

### 更改记录：

2015.02.07 -- 新增属性文字NSAttributedString轮播,给轮播文字添加颜色等信息。

2015.02.07 -- 新增纯文字轮播、增加viewController在来回push时候出现的图片卡在中间的解决方案“解决viewWillAppear时出现时轮播图卡在一半的问题，在控制器viewWillAppear时调用 adjustWhenControllerViewWillAppera”。

2015.01.03 -- 新增纯文字轮播、增加viewController在来回push时候出现的图片卡在中间的解决方案“解决viewWillAppear时出现时轮播图卡在一半的问题，在控制器viewWillAppear时调用 adjustWhenControllerViewWillAppera”。

2014.12.03 -- 0.图片管理使用SDWebImage；1.优化内存，提升性能；2.添加图片contentmode接口；3.block监听点击接口；4.滚动到某张图片监听；5.增加自定义图片pageControl接口；6.其他等等。其中有一处接口改动：pagecontrol的小圆点自定义接口改为：currentPageDotColor、pageDotColor、currentPageDotImage、pageDotImage。7.增加垂直方向滚动功能。

           
### 无限循环自动图片轮播器(一步设置即可使用)

     // 网络加载图片的轮播器
     HLCycleScrollView *cycleScrollView = [cycleScrollViewWithFrame:frame delegate:delegate placeholderImage:placeholderImage];
     cycleScrollView.imageURLStringsGroup = imagesURLStrings;
     
     // 本地加载图片的轮播器
     HLCycleScrollView *cycleScrollView = [HLCycleScrollView cycleScrollViewWithFrame: imagesGroup:图片数组];
    
    
 ---------------------------------------------------------------------------------------------------------------
 
## ??? 为什么我用这个轮播期会在顶部出现一块空白区域
以下是本库的使用者给出的一些解决方法放在这里供大家参考：
在iOS 7以后，controller 会对其中唯一的scrollView或其子类调整内边距，从而导致位置不准确。设置self.automaticallyAdjustsScrollViewInsets = NO;或者controller中放置不止一个scrollView或其子类时，就不会出现这种问题。以上原因是我的猜测，只要我设置了 self.automaticallyAdjustsScrollViewInsets = NO就没有那个问题了。
 
#PS:
 
 如需更详细的设置，参考如下：
 
 1. cycleScrollView.pageControlAliment = HLCycleScrollViewPageContolAlimentRight; // 设置pageControl居右，默认居中
 
 2. cycleScrollView.titlesGroup =  标题数组（数组元素个数必须和图片数组元素个数保持一致）; // 如果设置title数组，则会在图片下面添加标题
 
 3. cycleScrollView.delegate = ; // 如需监听图片点击，请设置代理，实现代理方法
 
 4. cycleScrollView.autoScrollTimeInterval = ;// 自定义轮播时间间隔 
