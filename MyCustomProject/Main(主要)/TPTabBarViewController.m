//
//  TPTabBarViewController.m
//  TalentPoolsAPP
//
//  Created by pg on 16/2/24.
//  Copyright © 2016年 zhangjiang. All rights reserved.
//

#import "TPTabBarViewController.h"
#import "TPNavigationViewController.h"

@interface TPTabBarViewController ()<TPTabBarViewDelegate>


@end

@implementation TPTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setChildrenViewControllers];
    [self initCustomTabBar];
    //默认选择第一个
    [self.tabBarView selectButtonClick:self.tabBarView.channelBtn];

}

#pragma mark -处在后台的时候直接修改当前显示的视图
-(void)changeViewController{
    self.selectedIndex = 3;
}

#pragma mark -设置viewController
-(void)setChildrenViewControllers{
//    NSArray *viewControllers = @[self.channelVC,articleVC,chooseVC,messageVC,personalVC];
//    NSMutableArray *tabBarViewControllers = [NSMutableArray arrayWithCapacity:viewControllers.count];
//    for (TPBaseViewController *VC in viewControllers)
//    {
//        TPNavigationViewController *baseNav = [[TPNavigationViewController alloc]initWithRootViewController:VC];
//        [tabBarViewControllers addObject:baseNav];
//    }
//    [self setViewControllers:tabBarViewControllers];
}


#pragma mark -初始化tabbar
-(void)initCustomTabBar
{
    self.tabBarView = [[[NSBundle mainBundle]loadNibNamed:@"TPTabBarView" owner:self options:nil] lastObject];
    self.tabBarView.frame = self.tabBar.bounds;
    self.tabBarView.selectDelegate = self;
    [self.tabBar addSubview:self.tabBarView];
}

#pragma mark -tabbar的代理方法
-(void)tabbarSelectIndex:(NSInteger)index{
    self.selectedIndex = index;
    
}

//
//-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
//    self.maskAnimation.animationType = KViewControllerDismiss;
//    self.maskAnimation.startPoint = CGPointMake(SCREEN_WIDTH/2, SCREEN_HEIGHT - KNAVHEIGHT/2);
//    return self.maskAnimation;
//}
//
//
//-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
//    self.maskAnimation.animationType = KViewControllerPresent;
//    self.maskAnimation.startPoint = CGPointMake(SCREEN_WIDTH/2, SCREEN_HEIGHT-KNAVHEIGHT/2);
//    return self.maskAnimation;
//}
@end
