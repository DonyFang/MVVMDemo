//
//  FDDTableViewController.m
//  MVVMDemo
//
//  Created by 方冬冬 on 17/7/23.
//  Copyright © 2017年 ibeier. All rights reserved.
//

#import "FDDTableViewController.h"
#import "FDDTableViewCell.h"

#import "FDDCellViewModel.h"

@interface FDDTableViewController ()

@property(nonatomic,strong)FDDCellViewModel *cellViewModel;

@end

@implementation FDDTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.navigationItem.title = @"MVVM simpleOne";

    self.cellViewModel = [[FDDCellViewModel alloc] init];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

  return   [self.cellViewModel tableView:tableView cellForRowAtIndexPath:indexPath];
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{


}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [self.cellViewModel numberOfItemsInSection:section];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.cellViewModel numberOfSections];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
   return  [self.cellViewModel tableView:tableView heightForRowAtIndexPath:indexPath];
}

@end
