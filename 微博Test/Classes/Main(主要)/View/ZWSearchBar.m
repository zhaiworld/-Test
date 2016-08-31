//
//  ZWSearchBar.m
//  微博Test
//
//  Created by Chia on 16/8/31.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWSearchBar.h"
#import "UIView+Category.h"

@implementation ZWSearchBar

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        //定义搜索框
        self.background = [UIImage imageNamed:@"searchbar_textfield_background"];
        self.placeholder = @"请输入搜索关键字";
        //搜索小标识
        UIImageView *searchIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"searchbar_textfield_search_icon"]];
        searchIcon.width = 30;
        searchIcon.height = 30;
        searchIcon.contentMode = UIViewContentModeCenter;
        //设置搜索框属性
        self.leftView = searchIcon;
        self.leftViewMode = UITextFieldViewModeAlways;
        self.clearButtonMode = UITextFieldViewModeWhileEditing;
    }
    return self;
}

+(instancetype)searchBar{
    return [[self alloc] init];
}
@end
