//
//  ZuoViewController.m
//  安邦盟信线上订单系统
//
//  Created by oracle on 15/11/27.
//  Copyright © 2015年 sk. All rights reserved.
//

#import "ZuoViewController.h"
#import "Chaxun.h"
#import "NavigationController.h"
#import "XiugaiViewController.h"
#import "GerenViewController.h"
#import "ShezhiViewController.h"

@interface ZuoViewController ()
@property(strong,nonatomic)UITableView *Mytable;
@end

@implementation ZuoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Mytable=({
        UITableView *Mytable = [[UITableView alloc] initWithFrame:CGRectMake(0, (self.view.frame.size.height - 54 * 5) / 2.0f, self.view.frame.size.width, 54 * 5) style:UITableViewStylePlain];
        Mytable.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleWidth;
        Mytable.delegate = self;
        Mytable.dataSource = self;
        Mytable.opaque = NO;
        Mytable.backgroundColor = [UIColor clearColor];
        Mytable.backgroundView = nil;
        Mytable.separatorStyle = UITableViewCellSeparatorStyleNone;
        Mytable.bounces = NO;
        Mytable;
        
    });//此方法是逗号表达式，详情参见运算符表达式21-22页PPT；
    [self.view addSubview:self.Mytable];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark UITableView Datasource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *row=@"row";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:row];
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:row];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:21];//设置字体
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.textLabel.highlightedTextColor = [UIColor lightGrayColor];//点击之后颜色
        cell.selectedBackgroundView = [[UIView alloc] init];
    }
    NSArray *ar1=@[@"订单查询",@"修改密码",@"个人信息",@"设置"];
    NSArray *ar2=@[@"IconHome", @"IconCalendar", @"IconProfile", @"IconSettings" ];
    
    cell.textLabel.text = ar1[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:ar2[indexPath.row]];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row==0) {

        [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[[Chaxun alloc] init]]
                                                     animated:YES];
        [self.sideMenuViewController hideMenuViewController];
   }
    else if(indexPath.row == 1){
        
        [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[[XiugaiViewController alloc] init]]animated:YES];
        [self.sideMenuViewController hideMenuViewController];
    }
    else if(indexPath.row == 2){
        
        [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[[GerenViewController alloc]init]]animated:YES];
        [self.sideMenuViewController hideMenuViewController];
    }
    else if(indexPath.row == 3){
        
        [self.sideMenuViewController setContentViewController:[[UINavigationController alloc]initWithRootViewController:[[ShezhiViewController alloc] init]]animated:YES];
        [self.sideMenuViewController hideMenuViewController];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 54;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return 4;
}

@end
