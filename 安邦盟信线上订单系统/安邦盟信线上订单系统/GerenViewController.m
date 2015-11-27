//
//  GerenViewController.m
//  安邦盟信线上订单系统
//
//  Created by oracle on 15/11/27.
//  Copyright © 2015年 sk. All rights reserved.
//

#import "GerenViewController.h"

@interface GerenViewController ()

@end

@implementation GerenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self daohang];
}
-(void)daohang{
    
    //导航栏颜色
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    //导航按钮颜色
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //导航字体颜色
    [self.navigationController.navigationBar setTitleTextAttributes:
     
     @{NSFontAttributeName:[UIFont systemFontOfSize:19],
       
       NSForegroundColorAttributeName:[UIColor whiteColor]}];
    //名
    self.navigationItem.title = @"个人信息";
    
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"@2x_127.png"]style:UIBarButtonItemStylePlain target:self action:@selector(presentLeftMenuViewController:)];
    self.navigationItem.leftBarButtonItem=left;
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"@2x_123.png"]style:UIBarButtonItemStylePlain target:self action:@selector(tiao)];
    self.navigationItem.rightBarButtonItem = right;
    
    
}


-(void)tiao{
    
    NSLog(@"跳跳跳跳跳跳跳");
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
