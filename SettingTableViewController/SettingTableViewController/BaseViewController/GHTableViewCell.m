//
//  GHTableViewCell.m
//  SettingTableViewController
//
//  Created by ken on 2017/3/24.
//  Copyright © 2017年 Ken.Liu. All rights reserved.
//

#import "GHTableViewCell.h"

@interface GHTableViewCell()

@property (nonatomic, strong) UIImageView *arrowImageView;
@property (nonatomic, strong) UISwitch *switchView;
@property (nonatomic, strong) UILabel *titleLabel;

@end



@implementation GHTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - Event
- (void)statusDidChanged{
    [[NSUserDefaults standardUserDefaults] setBool:self.switchView.isOn forKey:self.model.title];
}



#pragma mark - getter / setter
- (void)setModel:(GHCellItemModel *)model {
    _model = model;
    //设置数据
    self.imageView.image = model.image;
    self.textLabel.text = model.title;
    self.detailTextLabel.text = model.content;
    
    
}


- (UIImageView *)arrowImageView {
    if(_arrowImageView ==nil){
        _arrowImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _arrowImageView;
}

- (UISwitch *)switchView {
    if(_switchView == nil){
        _switchView = [[UISwitch alloc] init];
        [_switchView addTarget:self action:@selector(statusDidChanged) forControlEvents:UIControlEventValueChanged];
    }
    return _switchView;
}



@end
