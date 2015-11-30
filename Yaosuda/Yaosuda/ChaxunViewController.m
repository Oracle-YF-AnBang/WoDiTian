//
//  ChaxunViewController.m
//  Yaosuda
//
//  Created by oracle on 15/11/30.
//  Copyright © 2015年 sk. All rights reserved.
//

#import "ChaxunViewController.h"

@interface ChaxunViewController ()
{
    CGFloat width;
    CGFloat height;
    
    UITableViewCell *cell;
}
@end

@implementation ChaxunViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    
    width = [UIScreen mainScreen].bounds.size.width;
    height = [UIScreen mainScreen].bounds.size.width;

    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 300;//cell高度
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 30;//section高度
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    UIView *viewForHeader = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 40)];
    
    UILabel *groupName = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 60, 35)];
    groupName.textColor = [UIColor grayColor];
    groupName.text =@"订单1信息";
    groupName.font = [UIFont systemFontOfSize:13];
    
    UIButton *tu = [[UIButton alloc] initWithFrame:CGRectMake(width-60, 0, 20, 20)];
    

    UILabel *shenhe = [[UILabel alloc]initWithFrame:CGRectMake(width-10-50, 0, 50, 35)];
    shenhe.text = @"未审核";
    shenhe.textColor = [UIColor grayColor];
    shenhe.font = [UIFont systemFontOfSize:13];
    
    
    viewForHeader.backgroundColor=[UIColor whiteColor];
    
    
    [viewForHeader addSubview:shenhe];
    [viewForHeader addSubview:groupName];
    return viewForHeader;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *id1 =@"mycell";
    
    cell = [tableView cellForRowAtIndexPath:indexPath ];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id1];
    }

    
    return cell;
}











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
