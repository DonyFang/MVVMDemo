//
//  ViewController.m
//  MVVMDemo
//
//  Created by 方冬冬 on 17/7/23.
//  Copyright © 2017年 ibeier. All rights reserved.
//

#import "ViewController.h"
#import "FDDTableViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *mainTable;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.mainTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    [self.view addSubview:self.mainTable];
    self.mainTable.delegate = self;

    self.mainTable.dataSource = self;

    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cellIdentifier";

    UITableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];

    }

    if (indexPath.row == 0) {
        cell.textLabel.text = @"MVVM simpleOne";

    }else if(indexPath.row == 1){
        cell.textLabel.text = @"MVVM simpleTWo";

    }

    return cell;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return 1;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        FDDTableViewController *simpleOne = [[FDDTableViewController alloc] init];
        [self.navigationController pushViewController:simpleOne animated:YES];
    }

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 2;
}





- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 44;
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
