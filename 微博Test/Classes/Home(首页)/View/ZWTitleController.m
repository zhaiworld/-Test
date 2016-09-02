//
//  ZWTitleController.m
//  微博Test
//
//  Created by Chia on 16/9/1.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWTitleController.h"

@interface ZWTitleController ()

@end

@implementation ZWTitleController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *reuseID = @"group";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseID];
    }
    if (indexPath.row == 0) {
        cell.textLabel.text = @"好友";
    }else if (indexPath.row == 1){
        cell.textLabel.text = @"同事";
    }else if (indexPath.row == 2){
        cell.textLabel.text = @"同学";
    }
    
    // Configure the cell...
    
    return cell;
}


@end
