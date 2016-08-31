
//
//  ZWProfileController.m
//  微博Test
//
//  Created by Chia on 16/8/30.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWProfileController.h"

@implementation ZWProfileController

-(void)viewDidLoad{
    [super viewDidLoad];
    //设置导航右部控件
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:self action:@selector(setting)];
}

- (void)setting{
    NSLog(@"setting");
}

@end
