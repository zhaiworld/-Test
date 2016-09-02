//
//  ZWTabBar.h
//  微博Test
//
//  Created by Chia on 16/9/2.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZWTabBar;
@protocol ZWTabBarDelegate <UITabBarDelegate>

@optional
-(void)tabBarDidClickPlusBtn:(ZWTabBar*)tabBar;

@end
@interface ZWTabBar : UITabBar

@property (nonatomic, weak) id<ZWTabBarDelegate> delegate;

@end
