//
//  FDDCellViewModel.h
//  MVVMDemo
//
//  Created by 方冬冬 on 17/7/23.
//  Copyright © 2017年 ibeier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class FDDTableViewCell, UITableView;

@interface FDDCellViewModel : NSObject

@property (nonatomic, strong) NSMutableArray *FDDInfoArray;

- (NSInteger)numberOfSections;
- (NSInteger)numberOfItemsInSection:(NSInteger)section;

- (FDDTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;


@end
