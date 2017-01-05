//
//  TPTabBarView.h
//  TalentPoolsAPP
//
//  Created by pg on 16/2/24.
//  Copyright © 2016年 zhangjiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TPDiscoverViewController;

@protocol TPTabBarViewDelegate <NSObject>

/**
 *  tabbar选项
 */
-(void)tabbarSelectIndex:(NSInteger)index;

@end


@interface TPTabBarView : UIView

@property (weak, nonatomic) IBOutlet UIButton *channelBtn;
@property (weak, nonatomic) IBOutlet UIButton *discoverBtn;
@property (weak, nonatomic) IBOutlet UIButton *plusBtn;
@property (weak, nonatomic) IBOutlet UIButton *messageBtn;
@property (weak, nonatomic) IBOutlet UIButton *personalBtn;

@property (strong,nonatomic)UIView *loginView;

@property (strong,nonatomic)TPDiscoverViewController *parentVC;

@property (nonatomic,assign) id<TPTabBarViewDelegate> selectDelegate;
/**
 *  选择的按钮点击事件
 */
- (IBAction)selectButtonClick:(UIButton *)sender;


@end
