//
//  ZWDiscoverController.m
//  微博Test
//
//  Created by Chia on 16/8/30.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWDiscoverController.h"
#import "UIView+Category.h"
#import "ZWSearchBar.h"

@interface ZWDiscoverController()

@end
@implementation ZWDiscoverController

-(void)viewDidLoad{
    [super viewDidLoad];
    //添加搜索控件
    ZWSearchBar *searchBar= [ZWSearchBar searchBar];
    searchBar.width = 300;
    searchBar.height = 30;
    
    self.navigationItem.titleView = searchBar;
    
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
}


@end
