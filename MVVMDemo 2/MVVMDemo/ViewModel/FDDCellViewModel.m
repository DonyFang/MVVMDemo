//
//  FDDCellViewModel.m
//  MVVMDemo
//
//  Created by 方冬冬 on 17/7/23.
//  Copyright © 2017年 ibeier. All rights reserved.
//

#import "FDDCellViewModel.h"
#import "FDDCellModel.h"
#import "FDDTableViewCell.h"
@interface FDDCellViewModel()

@end

@implementation FDDCellViewModel

- (NSMutableArray *)FDDInfoArray{
    if (_FDDInfoArray == nil) {
        _FDDInfoArray = [NSMutableArray arrayWithCapacity:0];
    }
    return _FDDInfoArray;
}


- (instancetype)init{
    self = [super init];

    if (self) {
        [self loadData];
    }
    return self;
}

- (void)loadData{
    //实际开发数据是网络获取到的，这里模拟给出一个数据
    NSArray *array = @[
                       @{@"image" : @"leon", @"title" : @"标题1"},
                        @{@"image" : @"leon", @"title" : @"标题2"},
                       @{@"image" : @"leon", @"title" : @"标题3"},
                         @{@"image" : @"leon", @"title" : @"标题4"},
                         @{@"image" : @"leon", @"title" : @"标题5"},
                         @{@"image" : @"leon", @"title" : @"标题6"},
                         @{@"image" : @"leon", @"title" : @"标题7"}
                       ];
    for (NSDictionary *dict in array) {
        FDDCellModel *model = [FDDCellModel FDDInfoWithDictionary:dict];
        [self.FDDInfoArray addObject:model];

    }
}




- (NSInteger)numberOfSections{
    return 1;
}
- (NSInteger)numberOfItemsInSection:(NSInteger)section{

    return self.FDDInfoArray.count;
}

- (FDDTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FDDTableViewCell *cell = [FDDTableViewCell cellWIthTableView:tableView];
    cell.model = self.FDDInfoArray[indexPath.row];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{


}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}
@end
