//
//  FDDCellModel.h
//  MVVMDemo
//
//  Created by 方冬冬 on 17/7/23.
//  Copyright © 2017年 ibeier. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FDDCellModel : NSObject

@property (nonatomic, copy) NSString *image;
@property (nonatomic, copy) NSString *title;

- (id)initWithDictionary:(NSDictionary *)dict;
+ (id)FDDInfoWithDictionary:(NSDictionary *)dict;
@end
