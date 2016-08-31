//
//  ZWDiscoverController.m
//  微博Test
//
//  Created by Chia on 16/8/30.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWDiscoverController.h"
#import "UIView+Category.h"

@interface ZWDiscoverController()

@property(nonatomic, strong) UITextField *searchBar;

@end
@implementation ZWDiscoverController

-(void)viewDidLoad{
    [super viewDidLoad];
    //添加搜索控件
    self.searchBar = [[UITextField alloc] init];
    self.searchBar.width = 300;
    self.searchBar.height = 30;
    self.searchBar.background = [UIImage imageNamed:@"searchbar_textfield_background"];
    self.searchBar.placeholder = @"请输入搜索关键字";
    //搜索小标识
    UIImageView *searchIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"searchbar_textfield_search_icon"]];
    searchIcon.width = 30;
    searchIcon.height = 30;
    searchIcon.contentMode = UIViewContentModeCenter;
    //设置搜索框属性
    self.searchBar.leftView = searchIcon;
    self.searchBar.leftViewMode = UITextFieldViewModeAlways;
    self.searchBar.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    self.navigationItem.titleView = self.searchBar;
    
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
}


@end
