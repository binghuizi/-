//
//  zhuYeTableViewCell.m
//  Weekend
//
//  Created by scjy on 16/1/4.
//  Copyright © 2016年 scjy. All rights reserved.
//

#import "zhuYeTableViewCell.h"
@interface zhuYeTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *zhuyeImageView;
@property (weak, nonatomic) IBOutlet UILabel *zhuyeNameLable;
@property (weak, nonatomic) IBOutlet UILabel *zhuyePriceLabel;
@property (weak, nonatomic) IBOutlet UIButton *zhuyeDistanceBtn;


@end
@implementation zhuYeTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
