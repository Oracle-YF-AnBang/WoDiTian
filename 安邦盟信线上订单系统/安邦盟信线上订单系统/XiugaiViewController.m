//
//  XiugaiViewController.m
//  安邦盟信线上订单系统
//
//  Created by oracle on 15/11/27.
//  Copyright © 2015年 sk. All rights reserved.
//

#import "XiugaiViewController.h"

@interface XiugaiViewController ()
{
    
    CGFloat width;
    CGFloat height;
    
}
@end

@implementation XiugaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    width = [UIScreen mainScreen].bounds.size.width;
    height = [UIScreen mainScreen].bounds.size.height;
    
    [self daohang];
    [self qita];
}

//编辑导航栏
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
    self.navigationItem.title = @"修改密码";

    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"@2x_127.png"]style:UIBarButtonItemStylePlain target:self action:@selector(presentLeftMenuViewController:)];
    self.navigationItem.leftBarButtonItem=left;
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"@2x_123.png"]style:UIBarButtonItemStylePlain target:self action:@selector(tiao)];
    self.navigationItem.rightBarButtonItem = right;

    
}

-(void)tiao{
    
    NSLog(@"跳跳跳跳跳跳跳");
    
}

//添加其他控件
-(void)qita{
    //背景view
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 64,width, height-64)];
    view.backgroundColor = [UIColor whiteColor];
    //用户名label
    UILabel *userlabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 20, 60, 30)];
    userlabel.text = @"用户名:";
    userlabel.font = [UIFont systemFontOfSize:15];
    userlabel.textColor = [UIColor blackColor];
    //用户名账号label
    UILabel *userID = [[UILabel alloc]initWithFrame:CGRectMake(130, 20, 150, 30)];
    userID.text = @"18345559961";
    userID.font = [UIFont systemFontOfSize:15];
    userID.textColor = [UIColor blackColor];
    //旧密码label
    UILabel *old = [[UILabel alloc]initWithFrame:CGRectMake(50, 60, 60, 30)];
    old.text = @"旧密码:";
    old.font = [UIFont systemFontOfSize:15];
    old.textColor = [UIColor blackColor];
    //旧密码textfield
    UITextField *oldtext = [[UITextField alloc]initWithFrame:CGRectMake(130, 61, 150, 30)];
    oldtext.placeholder = @"请输入旧密码";
    oldtext.keyboardType=UIKeyboardTypeNumbersAndPunctuation;
    oldtext.font = [UIFont systemFontOfSize:14];
    //线
    UIView *xian = [[UIView alloc]initWithFrame:CGRectMake(130, 88, 150, 1)];
    xian.backgroundColor = [UIColor grayColor];
    //新密码label
    UILabel *new = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 60, 30)];
    new.text = @"新密码:";
    new.font = [UIFont systemFontOfSize:15];
    new.textColor = [UIColor blackColor];
    //新密码textfield
    UITextField *newtext = [[UITextField alloc]initWithFrame:CGRectMake(130, 101, 150, 30)];
    newtext.placeholder = @"请输入新的密码";
    newtext.keyboardType=UIKeyboardTypeNumbersAndPunctuation;
    newtext.font = [UIFont systemFontOfSize:14];
    //线
    UIView *xian1 = [[UIView alloc]initWithFrame:CGRectMake(130, 128, 150, 1)];
    xian1.backgroundColor = [UIColor grayColor];
    //完成button
    UIButton *wanchen = [[UIButton alloc]initWithFrame:CGRectMake(40, 200, width-80, 40)];
    wanchen.backgroundColor = [UIColor orangeColor];
    [wanchen setTitle:@"完成" forState:UIControlStateNormal];
    [wanchen setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [wanchen.layer setCornerRadius:5.0];
    [wanchen addTarget:self action:@selector(wancheng) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:view];
    [view addSubview:userlabel];
    [view addSubview:userID];
    [view addSubview:old];
    [view addSubview:oldtext];
    [view addSubview:new];
    [view addSubview:newtext];
    [view addSubview:wanchen];
    [view addSubview:xian];
    [view addSubview:xian1];
    
    
    
}
// 完成按钮方法
-(void)wancheng{
    
    [self.view endEditing:YES];
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
