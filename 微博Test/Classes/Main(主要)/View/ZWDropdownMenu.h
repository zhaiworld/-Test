//
//  ZWDropdownMenu.h
//  微博Test
//
//  Created by Chia on 16/9/1.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZWDropdownMenu;
@protocol ZWDropdownMenuDelegate <NSObject>

@optional
-(void)dropdownMenuDidShow:(ZWDropdownMenu*)menu;
-(void)dropdownMenuDidDismiss:(ZWDropdownMenu*)menu;

@end
@interface ZWDropdownMenu : UIView
@property (nonatomic, weak) id<ZWDropdownMenuDelegate> delegate;
//内容
@property (nonatomic, strong) UIView *content;
//内容控制器
@property (nonatomic, strong) UIViewController *contentController;

+(instancetype)menu;
/**
 *  显示下拉控件
 */
-(void)showFrom:(UIView*)from;
/**
 *  隐藏下拉控件
 */
-(void)dismiss;



@end
