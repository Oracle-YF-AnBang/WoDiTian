//
//  Dingdanxiangqing.m
//  安邦盟信线上订单系统
//
//  Created by 小狼 on 15/11/25.
//  Copyright © 2015年 sk. All rights reserved.
//

#import "ShangpinxinxiViewController.h"
#import "AFHTTPRequestOperationManager.h"
#import "SBJsonWriter.h"
#import "WarningBox.h"
@interface ShangpinxinxiViewController ()
{
    int width;
    int height;
}

@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation ShangpinxinxiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    self.tableview.rowHeight = 138;
    
    width = [UIScreen mainScreen].bounds.size.width;
    height = [UIScreen mainScreen].bounds.size.height;
  
    
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *id1 =@"mycell1";
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath ];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id1];
    }
    
    UIView *di = [[UIView alloc]initWithFrame:CGRectMake(20, 10, width-40, 118)];
    [di.layer setCornerRadius:5.0];
    [di.layer setBorderWidth:1];
    UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
    image.image = [UIImage imageNamed:@"110.png"];
    UILabel *name = [[UILabel alloc]initWithFrame:CGRectMake(70, 10, 60, 15)];
    name.text = @"商品名称:";
    name.font = [UIFont systemFontOfSize:12];
    UILabel *name1 = [[UILabel alloc]initWithFrame:CGRectMake(150, 10, 60, 15)];
    name1.text = @"商品名称:";
    name1.font = [UIFont systemFontOfSize:12];
    UILabel *guige = [[UILabel alloc]initWithFrame:CGRectMake(70, 30, 60, 15)];
    guige.text = @"规       格:";
    guige.font = [UIFont systemFontOfSize:12];
    UILabel *guige1 = [[UILabel alloc]initWithFrame:CGRectMake(150, 30, 60, 15)];
    guige1.text = @"规       格:";
    guige1.font = [UIFont systemFontOfSize:12];
    UILabel *danwei = [[UILabel alloc]initWithFrame:CGRectMake(70, 50, 60, 15)];
    danwei.text = @"单       位:";
    danwei.font = [UIFont systemFontOfSize:12];
    UILabel *danwei1 = [[UILabel alloc]initWithFrame:CGRectMake(150, 50, 60, 15)];
    danwei1.text = @"单       位:";
    danwei1.font = [UIFont systemFontOfSize:12];
    UILabel *shengchan = [[UILabel alloc]initWithFrame:CGRectMake(70, 70, 60, 15)];
    shengchan.text = @"生产企业:";
    shengchan.font = [UIFont systemFontOfSize:12];
    UILabel *shengchan1 = [[UILabel alloc]initWithFrame:CGRectMake(150, 70, 60, 15)];
    shengchan1.text = @"生产企业:";
    shengchan1.font = [UIFont systemFontOfSize:12];
    UILabel *shuliang = [[UILabel alloc]initWithFrame:CGRectMake(70, 90, 60, 15)];
    shuliang.text = @"数       量:";
    shuliang.font = [UIFont systemFontOfSize:12];
    UIButton *jian = [[UIButton alloc]initWithFrame:CGRectMake(130, 90, 50, 15)];
    [jian setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [jian setTitle:@"-" forState:UIControlStateNormal];
    [jian addTarget:self action:@selector(jian) forControlEvents:UIControlEventTouchUpInside];
    UITextField *shu = [[UITextField alloc]initWithFrame:CGRectMake(160, 91, 35, 15)];
    shu.text = @"0";
    shu.textAlignment = UITextAlignmentCenter;
    shu.font = [UIFont systemFontOfSize:12];
    UIButton *jia = [[UIButton alloc]initWithFrame:CGRectMake(175, 90, 50, 15)];
    [jia setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [jia setTitle:@"+" forState:UIControlStateNormal];
    [jia addTarget:self action:@selector(jia) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *tianjia = [[UIButton alloc]initWithFrame:CGRectMake(215, 88, 50, 20)];
    [tianjia setTitle:@"添加" forState:UIControlStateNormal];
    tianjia.backgroundColor = [UIColor orangeColor];
    tianjia.font = [UIFont systemFontOfSize:12];
    [tianjia setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [tianjia addTarget:self action:@selector(tianjia) forControlEvents:UIControlEventTouchUpInside];
    
    [cell addSubview:di];
    [di addSubview:image];
    [di addSubview:name];
    [di addSubview:guige];
    [di addSubview:danwei];
    [di addSubview:shengchan];
    [di addSubview:shuliang];
    [di addSubview:jian];
    [di addSubview:jia];
    [di addSubview:shu];
    [di addSubview:tianjia];
    [di addSubview:name1];
    [di addSubview:guige1];
    [di addSubview:danwei1];
    [di addSubview:shengchan1];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //self.tableview.separatorStyle=UITableViewCellAccessoryNone;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ShangpinxinxiViewController*shang=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"shangpinxiangqing"];
    shang.orderId=@"1";
    [self.navigationController pushViewController:shang animated:YES];
}
@end
