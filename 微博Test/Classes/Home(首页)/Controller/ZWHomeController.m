//
//  ZWHomeController.m
//  微博Test
//
//  Created by Chia on 16/8/30.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWHomeController.h"
#import "UIBarButtonItem+Category.h"
#import "UIView+Category.h"
#import "ZWDropdownMenu.h"
#import "ZWTitleController.h"


@interface ZWHomeController()<ZWDropdownMenuDelegate>

@end
@implementation ZWHomeController

-(void)viewDidLoad{
    [super viewDidLoad];
    //设置导航左部控件
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(searchFriend) image:@"navigationbar_friendsearch" highImage:@"navigationbar_friendsearch_highlighted" event:UIControlEventTouchUpInside];
    
    //设置右部控件
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(pop) image:@"navigationbar_pop" highImage:@"navigationbar_pop_highlighted" event:UIControlEventTouchUpInside];
    
    //设置导航标题
    UIButton *titleBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [titleBtn setTitle:@"首页" forState:UIControlStateNormal];
    [titleBtn setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:UIControlStateNormal];
    [titleBtn setImage:[UIImage imageNamed:@"navigationbar_arrow_up"] forState:UIControlStateSelected];
    [titleBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    titleBtn.titleLabel.font = [UIFont boldSystemFontOfSize:17];
    //添加点击事件
    [titleBtn addTarget:self action:@selector(clickTitle:) forControlEvents:UIControlEventTouchUpInside];
    //计算文字的宽度
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSFontAttributeName] = [UIFont boldSystemFontOfSize:17];
    CGSize titleSize = [titleBtn.titleLabel.text sizeWithAttributes:attr];
    
    //计算整个标题的宽度
    CGFloat margin = 10;
    CGFloat titleBtnWidth = titleSize.width + titleBtn.currentImage.size.width + 5*margin;
    titleBtn.frame = CGRectMake(0, 0, titleBtnWidth, 30);
    titleBtn.imageEdgeInsets = UIEdgeInsetsMake(0, 2*margin+titleSize.width, 0, 0);
    titleBtn.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 2*margin+titleBtn.currentImage.size.width);
    //添加控件到标题
    self.navigationItem.titleView = titleBtn;
}
//显示下拉菜单
- (void)clickTitle:(UIButton *)btn{
    //创建下拉控件
    ZWDropdownMenu *menu = [ZWDropdownMenu menu];
    menu.delegate = self;
    //创建要添加的内容
    ZWTitleController *contentVc = [[ZWTitleController alloc] init];
    contentVc.view.width = 150;
    contentVc.view.height = 44 *3;
    menu.contentController = contentVc;
    //显示下拉控件
    [menu showFrom:btn];
    
}
#pragma mark --ZWDropdownMenuDelegate
-(void)dropdownMenuDidShow:(ZWDropdownMenu *)menu{
    UIButton *titleBtn = (UIButton*)self.navigationItem.titleView;
    titleBtn.selected = YES;
}
-(void)dropdownMenuDidDismiss:(ZWDropdownMenu *)menu{
    UIButton *titleBtn = (UIButton*)self.navigationItem.titleView;
    titleBtn.selected = NO;
}
- (void)searchFriend{
    NSLog(@"searchFriend");
}

- (void)pop{
    NSLog(@"pop");
}

@end
