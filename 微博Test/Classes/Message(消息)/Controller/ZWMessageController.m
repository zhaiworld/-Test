//
//  ZWMessageController.m
//  微博Test
//
//  Created by Chia on 16/8/30.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWMessageController.h"
#import "ZWTestOneController.h"


@implementation ZWMessageController

-(void)viewDidLoad{
    [super viewDidLoad];
    //设置导航右部控件
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"写私信" style:UIBarButtonItemStylePlain target:self action:@selector(composeMsg)];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationItem.rightBarButtonItem.enabled = NO;
}
- (void)composeMsg{
    NSLog(@"composeMsg");
}
#pragma mark -- 实现tableviewdatasource方法
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *reuseID = @"message";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseID];
    
    NSString *context = [NSString stringWithFormat:@"message--id-%d",indexPath.row];
    cell.textLabel.text = context;
    return cell;
}

#pragma mark --实现tableviewdelegate方法
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ZWTestOneController *firstVc = [[ZWTestOneController alloc] init];
    [self.navigationController pushViewController:firstVc animated:YES];
}
@end
