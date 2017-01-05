//
//  TPBaseViewController.m
//  TalentPoolsAPP
//
//  Created by pg on 16/2/24.
//  Copyright © 2016年 zhangjiang. All rights reserved.
//

#import "TPBaseViewController.h"


//按比例获取高度
#define  WGiveHeight(HEIGHT) HEIGHT * [UIScreen mainScreen].bounds.size.height/568.0

//按比例获取宽度
#define  WGiveWidth(WIDTH) WIDTH * [UIScreen mainScreen].bounds.size.width/320.0

@interface TPBaseViewController ()

@end

@implementation TPBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.clipsToBounds = YES;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self resetBackButtonItem];
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
}

-(void)setNavBarStyle{
    
    //设置样式
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
    
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setTintColor:UIColorFromRGB(0x333333,1)];
    [navBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:UIColorFromRGB(0x333333,1),
       NSFontAttributeName:[UIFont systemFontOfSize:18]}];
    [navBar setBackgroundImage:[HUDHelper imageWithColor:[UIColorFromRGB(0xffffff,1) colorWithAlphaComponent:1]] forBarMetrics:UIBarMetricsDefault];
}


#pragma mark -设置导航栏返回按钮的显示文字为空
- (void)resetBackButtonItem {
    NSArray *viewControllerArray = [self.navigationController viewControllers];
    
    long previousViewControllerIndex = [viewControllerArray indexOfObject:self] - 1;
    UIViewController *previous;
    
    if (previousViewControllerIndex >= 0) {
        previous = [viewControllerArray objectAtIndex:previousViewControllerIndex];
        previous.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:self action:nil];
    }
}

- (void)addRightBtnWithStr:(NSString *)str andSelector:(SEL)sel{
    UIButton *right = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 50, 28)];
    [right setTitle:str forState:UIControlStateNormal];
    [right setTitleColor:UIColorFromRGB(0x333333,1) forState:UIControlStateNormal];
    right.imageView.contentMode = UIViewContentModeLeft;
    right.titleLabel.font = [UIFont systemFontOfSize:16];
    [right addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithCustomView:right];
    self.navigationItem.rightBarButtonItem = rightItem;

}

- (void)addLeftBtnWithStr:(NSString *)str andSelector:(SEL)sel
{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:str style:UIBarButtonItemStylePlain target:self action:sel];
}

- (void)addLeftBtnWithImgName:(NSString *)imgName andSelector:(SEL)sel
{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[self removeRendering:imgName] style:UIBarButtonItemStylePlain target:self action:sel];
    
    //微调一下图片的位置
    [self.navigationItem.leftBarButtonItem setImageInsets:UIEdgeInsetsMake(0, WGiveWidth(-6), 0, WGiveWidth(6))];
}

//添加返回的数组视图
- (void)addLeftButtonItemsWithImgName:(NSString *)imgName andSelector:(SEL)sel
{
    self.navigationItem.leftBarButtonItems = @[[[UIBarButtonItem alloc]initWithImage:[self removeRendering:imgName] style:UIBarButtonItemStylePlain target:self action:sel]];
    
    //微调一下图片的位置
//    [self.navigationItem.leftBarButtonItem setImageInsets:UIEdgeInsetsMake(0, WGiveWidth(-6), 0, WGiveWidth(6))];
}


- (void)addRightBtnWithImgName:(NSString *)imgName andSelector:(SEL)sel
{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[self removeRendering:imgName] style:UIBarButtonItemStylePlain target:self action:sel];
    
    //微调一下图片的位置
    [self.navigationItem.rightBarButtonItem setImageInsets:UIEdgeInsetsMake(0, WGiveWidth(-6), 0, WGiveWidth(6))];
}

/**
 *  返回取消渲染的image
 */
- (UIImage *)removeRendering:(NSString *)imageName
{
    UIImage * image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}


@end
