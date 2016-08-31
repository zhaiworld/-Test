//
//  ZWTabBarController.m
//  微博Test
//
//  Created by Chia on 16/8/30.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWTabBarController.h"
#import "ZWDiscoverController.h"
#import "ZWHomeController.h"
#import "ZWMessageController.h"
#import "ZWProfileController.h"
#import "ZWNavigationController.h"



@implementation ZWTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //添加子视图,首页
    ZWHomeController *home = [[ZWHomeController alloc] init];
    [self addChildVc:home title:@"首页" image:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    
    //消息
    ZWMessageController *message = [[ZWMessageController alloc] init];
    [self addChildVc:message title:@"消息" image:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
    //发现
    ZWDiscoverController *discover = [[ZWDiscoverController alloc] init];
    [self addChildVc:discover title:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
    //我
    ZWProfileController *profile = [[ZWProfileController alloc] init];
    [self addChildVc:profile title:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
    
}

- (void)addChildVc:(UIViewController*)viewController title:(NSString*)title image:(NSString*)image selectedImage:(NSString*)selectedImage{
    //设置item的文字及图片
    viewController.title = title;
    [viewController.tabBarItem setImage:[UIImage imageNamed:image]];
    [viewController.tabBarItem setSelectedImage:[[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    //设置文字颜色
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [viewController.tabBarItem setTitleTextAttributes:attr forState:UIControlStateSelected];
    //将子控制器包装进导航控制器
    ZWNavigationController *nav = [[ZWNavigationController alloc] initWithRootViewController:viewController];
    [self addChildViewController:nav];
}
@end
