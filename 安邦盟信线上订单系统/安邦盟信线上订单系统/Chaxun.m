//
//  Chaxun.m
//  安邦盟信线上订单系统
//
//  Created by oracle on 15/11/20.
//  Copyright © 2015年 sk. All rights reserved.
//

#import "Chaxun.h"
#import "Xiadan.h"
#import "AFHTTPRequestOperationManager.h"
#import "SBJsonWriter.h"
#import "MBProgressHUD.h"
#import "WarningBox.h"
#import "ZuoViewController.h"
#import "YouViewController.h"
#import "NavigationController.h"
@interface Chaxun ()
{
    CGFloat width;
    CGFloat height;
    int aniu;
    NSMutableArray*zushu;
    NSMutableArray*hangshu;
}

@property(strong,nonatomic)UITableView *tableview;
@end

@implementation Chaxun

- (void)viewDidLoad {
    [super viewDidLoad];
    NavigationController*navi=[[NavigationController alloc] init];
    ZuoViewController *leftMenuViewController = [[ZuoViewController alloc] init];
    YouViewController *rightMenuViewController = [[YouViewController alloc] init];
    
    RESideMenu *sideMenuViewController = [[RESideMenu alloc] initWithContentViewController:navi
                                                                    leftMenuViewController:leftMenuViewController
                                                                   rightMenuViewController:rightMenuViewController];
    sideMenuViewController.backgroundImage = [UIImage imageNamed:@"2.png"];
    sideMenuViewController.menuPreferredStatusBarStyle = 1; // UIStatusBarStyleLightContent
    sideMenuViewController.delegate = self;
    sideMenuViewController.contentViewShadowColor = [UIColor blackColor];
    sideMenuViewController.contentViewShadowOffset = CGSizeMake(0, 0);
    sideMenuViewController.contentViewShadowOpacity = 0.6;
    sideMenuViewController.contentViewShadowRadius = 12;
    sideMenuViewController.contentViewShadowEnabled = YES;
    width = [UIScreen mainScreen].bounds.size.width;
    height = [UIScreen mainScreen].bounds.size.height;
    //导航栏颜色
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    //导航按钮颜色
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //导航字体颜色
    [self.navigationController.navigationBar setTitleTextAttributes:
     
  @{NSFontAttributeName:[UIFont systemFontOfSize:19],
    
    NSForegroundColorAttributeName:[UIColor whiteColor]}];
    //名
    self.navigationItem.title = @"订单查询";
    
    [self left];
    [self right];
    [self chuanjian];
}

- (void)sideMenu:(RESideMenu *)sideMenu willShowMenuViewController:(UIViewController *)menuViewController
{
    NSLog(@"willShowMenuViewController: %@", NSStringFromClass([menuViewController class]));
}

- (void)sideMenu:(RESideMenu *)sideMenu didShowMenuViewController:(UIViewController *)menuViewController
{
    NSLog(@"didShowMenuViewController: %@", NSStringFromClass([menuViewController class]));
}

- (void)sideMenu:(RESideMenu *)sideMenu willHideMenuViewController:(UIViewController *)menuViewController
{
    NSLog(@"willHideMenuViewController: %@", NSStringFromClass([menuViewController class]));
}

- (void)sideMenu:(RESideMenu *)sideMenu didHideMenuViewController:(UIViewController *)menuViewController
{
    NSLog(@"didHideMenuViewController: %@", NSStringFromClass([menuViewController class]));
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


-(void)chuanjian{
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, height)];
    
    view.backgroundColor = [UIColor whiteColor];
    
    NSArray *segmentedArray = [[NSArray alloc]initWithObjects:@"全部订单",@"未审核订单",nil];
    
    //初始化UISegmentedControl
    
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc]initWithItems:segmentedArray];
    
    segmentedControl.frame = CGRectMake(0, 72, width, 28);
    
    segmentedControl.selectedSegmentIndex = 2;//设置默认选择项索引
    
    segmentedControl.tintColor = [UIColor orangeColor];
    
    self.tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 105, width, height-105)];
    
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    self.tableview.rowHeight = 138;
    self.tableview.showsVerticalScrollIndicator = NO;
    //解决tableview 上面多出一块的问题
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self.view addSubview:view];
    [view addSubview:self.tableview];
    [view addSubview:segmentedControl];
    
}



-(void)left{
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"@2x_127.png"]style:UIBarButtonItemStylePlain target:self action:@selector(presentLeftMenuViewController:)];
    self.navigationItem.leftBarButtonItem=left;

}

-(void)xiadan{
    Xiadan *xiandan = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"xiadan"];
    [self.navigationController pushViewController:xiandan animated:YES];
}

-(void)right{
    UIBarButtonItem *right = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"@2x_123.png"]style:UIBarButtonItemStylePlain target:self action:@selector(xiadan)];
    self.navigationItem.rightBarButtonItem = right;

}

-(void)wode{
    NSLog(@"个人中心");
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 30;
}
- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *viewForHeader = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 30)];
    viewForHeader.backgroundColor = [UIColor orangeColor];
    UILabel *groupName = [[UILabel alloc]initWithFrame:CGRectMake(10, 3, 200, 30)];
    
    
    
    groupName.text = @"订单信息";
    
    
    
    groupName.textColor = [UIColor whiteColor];
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(width-55-10, 3, 55, 30)];
    lab.textColor = [UIColor whiteColor];
    
    
    
    lab.text = @"待审核";
    
    
    
    [viewForHeader addSubview:groupName];
    [viewForHeader addSubview:lab];
    return viewForHeader;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    if (aniu==0) {
        return 2;
    }else
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 2;
    }
    else if (section == 1 ){
        return 5;
    }
    
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *id1 =@"mycell";
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath ];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id1];
    }


    
    
    UIView *di = [[UIView alloc]initWithFrame:CGRectMake(20, 10, width-40, 118)];
    [di.layer setCornerRadius:5.0];
    
    [di.layer setBorderWidth:1];

    UILabel *name = [[UILabel alloc]initWithFrame:CGRectMake(25, 7, 73, 21)];
    name.text = @"商品名称:";
    UILabel *name1 = [[UILabel alloc]initWithFrame:CGRectMake(10+name.frame.size.width+16, 7, width-10-25-16-name.frame.size.width-8, 21)];
    UILabel *number = [[UILabel alloc]initWithFrame:CGRectMake(25, 48, 73, 21)];
     number.text = @"商品数量:";
    UILabel *number1 = [[UILabel alloc]initWithFrame:CGRectMake(10+name.frame.size.width+16, 48, width-10-25-16-name.frame.size.width-8, 21)];
    UILabel *price = [[UILabel alloc]initWithFrame:CGRectMake(25, 89, 73, 21)];
     price.text = @"商品价格:";
    UILabel *price1 = [[UILabel alloc]initWithFrame:CGRectMake(10+name.frame.size.width+16, 89, width-10-25-16-name.frame.size.width-8, 21)];
    UIView *xian = [[UIView alloc]initWithFrame:CGRectMake(20, 138, width-40, 1)];
    xian.backgroundColor = [UIColor grayColor];
    
    [di addSubview:name];
    [di addSubview:name1];
    [di addSubview:number];
    [di addSubview:number1];
    [di addSubview:price];
    [di addSubview:price1];
    [cell.contentView addSubview:xian];
    [cell.contentView addSubview:di];
    
    self.tableview.separatorStyle=UITableViewCellAccessoryNone;
    cell.userInteractionEnabled = NO;
    return cell;
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"第一个界面开启");
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"界面消失");
}

@end
