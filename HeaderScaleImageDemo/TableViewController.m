//
//  TableViewController.m
//  HeaderScaleImageDemo
//
//  Created by admin on 16/7/30.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "TableViewController.h"
#import "UIScrollView+HeaderScaleImage.h"
static NSString * const ID = @"cell";

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置tableView头部缩放图片
    self.tableView.yz_headerScaleImage = [UIImage imageNamed:@"header.jpg"];
    // 设置tableView头部视图，必须设置头部视图背景颜色为clearColor,否则会被挡住
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 200)];
    headerView.backgroundColor = [UIColor clearColor];
    self.tableView.tableHeaderView = headerView;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    cell.textLabel.textColor = [UIColor redColor];
    
    NSString *text = nil;
    switch (indexPath.row) {
        case 0:
        {
            text = @"Runtime";
            break;
        }
        case 1:
        {
            text = @"修改图片";
            break;
        }
        case 2:
        {
            text = @"Scale";
            break;
        }
            
        default:
            break;
    }
    
    cell.textLabel.text = text;
    
    return cell;
}
@end
