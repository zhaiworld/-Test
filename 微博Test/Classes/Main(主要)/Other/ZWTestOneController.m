//
//  ZWTestOneController.m
//  微博Test
//
//  Created by Chia on 16/8/30.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWTestOneController.h"
#import "ZWTestTwoController.h"

@interface ZWTestOneController ()

@end

@implementation ZWTestOneController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    ZWTestTwoController *secondVc = [[ZWTestTwoController alloc] init];
    
    [self.navigationController pushViewController:secondVc animated:YES];
}
@end
