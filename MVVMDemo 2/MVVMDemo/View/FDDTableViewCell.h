//
//  FDDTableViewCell.h
//  MVVMDemo
//
//  Created by 方冬冬 on 17/7/23.
//  Copyright © 2017年 ibeier. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FDDCellModel;
@interface FDDTableViewCell : UITableViewCell

@property(nonatomic,strong)FDDCellModel *model;

+ (instancetype)cellWIthTableView:(UITableView *)tableView;

@end
