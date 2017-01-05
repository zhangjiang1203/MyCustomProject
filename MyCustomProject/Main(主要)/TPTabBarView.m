//
//  TPTabBarView.m
//  TalentPoolsAPP
//
//  Created by pg on 16/2/24.
//  Copyright © 2016年 zhangjiang. All rights reserved.
//

#import "TPTabBarView.h"
#import "TPNavigationViewController.h"
#import "TPTabBarViewController.h"

@interface TPTabBarView ()

@property (strong,nonatomic)UIButton *selectedBtn;


@end

@implementation TPTabBarView


-(void)awakeFromNib{
    [super awakeFromNib];
    
}


-(void)loginAndRegisterClick:(UIButton*)sender{
//    TPLoginAndRegisterViewController *VC = [[TPLoginAndRegisterViewController alloc]init];
//    VC.isShowBar = YES;
//    switch (sender.tag) {
//        case 1://注册
//        {
//            VC.loginType = KLoginTypeRegister;
//        }
//            break;
//        case 2://登录
//        {
//            VC.loginType = KLoginTypeLogin;
//        }
//            break;
//    }
//    TPTabBarViewController *viewController = (TPTabBarViewController*)[JZSystemUtils getCurrentViewController];
//
//    switch (sender.tag) {
//            case 1://注册
//            {
//                TPRegisterViewController *registerVC = [[TPRegisterViewController alloc]initWithNibName:@"TPRegisterViewController" bundle:nil];
//                registerVC.isDirect = YES;
//                TPNavigationViewController *loginNav = [[TPNavigationViewController alloc]initWithRootViewController:registerVC];
//                [viewController.channelVC presentViewController:loginNav animated:YES completion:nil];
//            }
//                break;
//            case 2://登录
//            {
//                TPLoginViewController *loginVC = [[TPLoginViewController alloc]initWithNibName:@"TPLoginViewController" bundle:nil];
//                TPNavigationViewController *loginNav = [[TPNavigationViewController alloc]initWithRootViewController:loginVC];
//                [viewController.channelVC presentViewController:loginNav animated:YES completion:nil];
//            }
//                break;
//        }
    
}

- (IBAction)selectButtonClick:(UIButton *)sender {
    //是否登录
    self.selectedBtn.selected = NO;
    sender.selected = YES;
    self.selectedBtn = sender;
    //代理方法切换视图
    if ([self.selectDelegate respondsToSelector:@selector(tabbarSelectIndex:)]) {
        [self.selectDelegate tabbarSelectIndex:sender.tag];
    }
}

@end
