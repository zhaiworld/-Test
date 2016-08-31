//
//  ZWNavigationController.m
//  微博Test
//
//  Created by Chia on 16/8/30.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWNavigationController.h"
#import "UIView+Category.h"
#import "UIBarButtonItem+Category.h"


@implementation ZWNavigationController

+(void)initialize{
    //设置导航栏文字样式
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    //可用状态
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [item setTitleTextAttributes:attr forState:UIControlStateNormal];
    //不可用状态
    NSMutableDictionary *attrDisable = [NSMutableDictionary dictionary];
    attrDisable[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1];
    [item setTitleTextAttributes:attrDisable forState:UIControlStateDisabled];
}

-(void)viewDidLoad{
    [super viewDidLoad];
    
}
//重写push方法
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.viewControllers.count > 0) {//push来的不是根控制器
        //设置导航左侧按钮
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"navigationbar_back" highImage:@"navigationbar_back_highlighted" event:UIControlEventTouchUpInside];
        //设置导航右侧按钮
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(more) image:@"navigationbar_more" highImage:@"navigationbar_more_highlighted" event:UIControlEventTouchUpInside];
    }
    [super pushViewController:viewController animated:animated];
}
- (void)back{
    [self popViewControllerAnimated:YES];
}

- (void)more{
    [self popToRootViewControllerAnimated:YES];
}

@end
