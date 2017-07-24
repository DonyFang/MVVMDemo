//
//  FDDTableViewCell.m
//  MVVMDemo
//
//  Created by 方冬冬 on 17/7/23.
//  Copyright © 2017年 ibeier. All rights reserved.
//

#import "FDDTableViewCell.h"
#import "FDDCellModel.h"

@interface FDDTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *leftImage;


@property (weak, nonatomic) IBOutlet UILabel *title;
@end

@implementation FDDTableViewCell


+ (instancetype)cellWIthTableView:(UITableView *)tableview {
    static NSString *cellID = @"FDDTableViewCell";
    FDDTableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = (FDDTableViewCell *)[[[NSBundle mainBundle] loadNibNamed:@"FDDTableViewCell" owner:self options:nil] lastObject];
    }
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
    return cell;
}

//
////重写init方法构建cell内容  纯代码创建cell 的时候需要重写此方法
//- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
//{
//    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
//        //图片
//        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 80, 60)];
//        [self.contentView addSubview:imageView];
//        self.leftImage = imageView;
//
//        //标题
//        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(imageView.frame) + 10, 15, 200, 20)];
//        label.font = [UIFont systemFontOfSize:20.0f];
//        [self.contentView addSubview:label];
//        self.title = label;
//
////        //副标题
////        UILabel *subLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(imageView.frame) + 10, 40, 200, 13)];
////        subLabel.font = [UIFont systemFontOfSize:13.0f];
////        [self.contentView addSubview:subLabel];
////        self.subLabel = subLabel;
////
////        self.backgroundColor = [UIColor whiteColor];
//    }
//
//    return self;
//}



- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}


- (void)setModel:(FDDCellModel *)model{
    _model = model;
    _leftImage.image = [UIImage imageNamed:_model.image];
    _title.text = _model.title;

}

@end
