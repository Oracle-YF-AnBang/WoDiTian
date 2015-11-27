//
//  Xiadan.m
//  安邦盟信线上订单系统
//
//  Created by oracle on 15/11/20.
//  Copyright © 2015年 sk. All rights reserved.
//

#import "Xiadan.h"

@interface Xiadan ()
{
    NSMutableArray *selectSection;
    
    CGFloat height;
    CGFloat width;
    
    UITableViewCell *cell;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITableView *tableView1;
- (IBAction)xiaoshi:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *xiaoshi;

@end

@implementation Xiadan

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
    width = [UIScreen mainScreen].bounds.size.width;
    height = [UIScreen mainScreen].bounds.size.height;
    
    self.xuanText.delegate = self;
    
    self.tableView1.hidden = YES;
    self.xiaoshi.hidden = YES;
    self.tableView.hidden = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    if (tableView == self.tableView ) {
        
            return 1;
        
    }
    else if(tableView == self.tableView1){
        return 1;
    }
    return 0;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (tableView == self.tableView) {
        return 1;
    }
    else if (tableView == self.tableView1){
        return 2;
    }
    return 0;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView == self.tableView) {
        return 100;
    }
    else if (tableView == self.tableView1){
        return 20;
    }
    return 0;
    
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (tableView == self.tableView) {
        static NSString *id1 =@"xuanze";
        
        cell = [tableView cellForRowAtIndexPath:indexPath ];
        if (cell == nil) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id1];
        }
        //左
        UILabel *name = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 50, 25)];
        UILabel *numbe = [[UILabel alloc]initWithFrame:CGRectMake(10, 40, 50, 25)];
        UILabel *danjia = [[UILabel alloc]initWithFrame:CGRectMake(10, 70, 50, 25)];
         
        name.text = @"名称:";
        numbe.text = @"数量:";
        danjia.text = @"单价";
            
        name.textColor = [UIColor blueColor];
        numbe.textColor = [UIColor blueColor];
        danjia.textColor = [UIColor blueColor];
            
        name.font = [UIFont systemFontOfSize:17];
        numbe.font = [UIFont systemFontOfSize:17];
        danjia.font = [UIFont systemFontOfSize:17];
        
        //右
        UILabel *name1 = [[UILabel alloc]initWithFrame:CGRectMake(90, 10, 50, 25)];
        UILabel *numbe1 = [[UILabel alloc]initWithFrame:CGRectMake(90, 40, 50, 25)];
        UILabel *danjia1 = [[UILabel alloc]initWithFrame:CGRectMake(90, 70, 50, 25)];
        
        name1.text = @"名称:";
        numbe1.text = @"数量:";
        danjia1.text = @"单价";
        
        name1.textColor = [UIColor blueColor];
        numbe1.textColor = [UIColor blueColor];
        danjia1.textColor = [UIColor blueColor];
        
        name1.font = [UIFont systemFontOfSize:17];
        numbe1.font = [UIFont systemFontOfSize:17];
        danjia1.font = [UIFont systemFontOfSize:17];

        [cell.contentView addSubview:name];
        [cell.contentView addSubview:name1];
        [cell.contentView addSubview:numbe];
        [cell.contentView addSubview:numbe1];
        [cell.contentView addSubview:danjia];
        [cell.contentView addSubview:danjia1];
        
        
        return cell;
    }
    
    else if (tableView == self.tableView1){
        
        static NSString *id1 =@"dingdan";
        
        cell = [tableView cellForRowAtIndexPath:indexPath ];
        if (cell == nil) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id1];
        }
            UILabel *kehu = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, 50, 20)];
            kehu.text = @"客户";
            kehu.textColor = [UIColor redColor];
            kehu.font = [UIFont systemFontOfSize:12];
            [cell.contentView addSubview:kehu];
        
       
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (tableView == self.tableView1) {
                if (indexPath.row == 0) {
           
            self.xuanText.text = @"111";
            self.tableView1.hidden = YES;
            self.xiaoshi.hidden = YES;
            self.tableView.hidden = NO;
          
        }
    }
    
    
}



-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField == self.xuanText) {
        NSLog(@"ssssss");
        self.tableView1.hidden = NO;
        self.xiaoshi.hidden = NO;
        [self.view bringSubviewToFront:self.tableView1];
        return NO;
    }
    return NO;
}


- (IBAction)saomiao:(id)sender {
    
    
    
}

- (IBAction)xiadan:(id)sender {
}
- (IBAction)xiaoshi:(id)sender {
    
    self.tableView1.hidden = YES;
    self.xiaoshi.hidden = YES;
    
}
@end
