//
//  zhuyeViewController.m
//  Weekend
//
//  Created by scjy on 16/1/4.
//  Copyright © 2016年 scjy. All rights reserved.
//

#import "zhuyeViewController.h"
#import "zhuYeTableViewCell.h"
@interface zhuyeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation zhuyeViewController





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //导航栏上按钮和文字颜色
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //导航栏颜色
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:27/255.0f green:185/255.0f blue:189/255.0f alpha:1.0];

//导航栏上的按钮
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:nil];
    //设置按钮
    self.navigationItem.rightBarButtonItem = rightBarButton;
    
    
    
    
    
//注册cell
    [self.tableView registerNib:[UINib nibWithNibName:@"zhuYeTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];



}
#pragma marks ----实现代理方法
//行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
//cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    zhuYeTableViewCell *zhuyeCell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    return zhuyeCell;
}
//行高
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 203;
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
