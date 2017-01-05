//
//  TPBaseViewController.h
//  TalentPoolsAPP
//
//  Created by pg on 16/2/24.
//  Copyright © 2016年 zhangjiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TPBaseViewController : UIViewController

-(void)setNavBarStyle;


/**
 *  添加nav上右按钮，图片
 */
- (void)addRightBtnWithImgName:(NSString *)imgName andSelector:(SEL)sel;

/**
 *  添加nav上左按钮，图片
 */
- (void)addLeftBtnWithImgName:(NSString *)imgName andSelector:(SEL)sel;

/**
 *  添加nav左上角的返回按钮数组
 */
-(void)addLeftButtonItemsWithImgName:(NSString *)imgName andSelector:(SEL)sel;

/**
 *  添加nav上右按钮，字符串
 */
- (void)addRightBtnWithStr:(NSString *)str andSelector:(SEL)sel;

/**
 *  添加nav上左按钮，字符串
 */
- (void)addLeftBtnWithStr:(NSString *)str andSelector:(SEL)sel;




@end
