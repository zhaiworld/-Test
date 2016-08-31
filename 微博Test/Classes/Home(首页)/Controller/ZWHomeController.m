//
//  ZWHomeController.m
//  微博Test
//
//  Created by Chia on 16/8/30.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWHomeController.h"
#import "UIBarButtonItem+Category.h"

@implementation ZWHomeController

-(void)viewDidLoad{
    [super viewDidLoad];
    //设置导航左部控件
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(searchFriend) image:@"navigationbar_friendsearch" highImage:@"navigationbar_friendsearch_highlighted" event:UIControlEventTouchUpInside];
    
    //设置右部控件
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(pop) image:@"navigationbar_pop" highImage:@"navigationbar_pop_highlighted" event:UIControlEventTouchUpInside];
}

- (void)searchFriend{
    NSLog(@"searchFriend");
}

- (void)pop{
    NSLog(@"pop");
}

@end
