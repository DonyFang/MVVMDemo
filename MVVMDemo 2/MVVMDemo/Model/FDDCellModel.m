//
//  FDDCellModel.m
//  MVVMDemo
//
//  Created by 方冬冬 on 17/7/23.
//  Copyright © 2017年 ibeier. All rights reserved.
//

#import "FDDCellModel.h"

@implementation FDDCellModel

- (id)initWithDictionary:(NSDictionary *)dict{

    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }

    return self;
}
+ (id)FDDInfoWithDictionary:(NSDictionary *)dict{
    return [[self alloc] initWithDictionary:dict];
}
@end
