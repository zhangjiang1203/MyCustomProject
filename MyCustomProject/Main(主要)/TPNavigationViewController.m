//
//  TPNavigationViewController.m
//  TalentPoolsAPP
//
//  Created by pg on 16/2/24.
//  Copyright © 2016年 zhangjiang. All rights reserved.
//

#import "TPNavigationViewController.h"

@interface TPNavigationViewController ()

@end

@implementation TPNavigationViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
    //去掉导航栏下面的黑线
//    [self.navigationBar setShadowImage:[UIImage new]];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.translucent = NO;
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setTintColor:UIColorFromRGB(0x333333)];
    [navBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:UIColorFromRGB(0x333333),
        NSFontAttributeName:[UIFont systemFontOfSize:18]}];
    [navBar setBackgroundImage:[HUDHelper imageWithColor:[UIColorFromRGB(0xffffff) colorWithAlphaComponent:1]] forBarMetrics:UIBarMetricsDefault];
    
    //自定义返回按钮
//    UIImage *backButtonImage = [[UIImage imageNamed:@"back_press"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 30, 0, 0)];
//    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
//    [[UIBarButtonItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -60) forBarMetrics:UIBarMetricsDefault];
//    [[UIBarButtonItem appearance]setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60) forBarMetrics:UIBarMetricsDefault];
//    //将返回按钮的文字position设置不在屏幕上显示
//    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(NSIntegerMin, NSIntegerMin) forBarMetrics:UIBarMetricsDefault];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 30, 40)];
    [button setImage:[UIImage imageNamed:@"back_press"] forState:UIControlStateNormal];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.backBarButtonItem = backItem;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}


@end
