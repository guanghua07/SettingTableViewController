//
//  GHCellItemModel.m
//  SettingTableViewController
//
//  Created by ken on 2017/3/24.
//  Copyright © 2017年 Ken.Liu. All rights reserved.
//

#import "GHCellItemModel.h"

@implementation GHCellItemModel

+ (instancetype)cellModelWithTitle:(NSString *)title {
    GHCellItemModel *model = [[self alloc] init];
    model.title = title;
    return model;
}

+ (instancetype)cellModelWithTitle:(NSString *)title andContent:(NSString *)content {
    GHCellItemModel *model = [self cellModelWithTitle:title];
    model.content = content;
    return model;
}

+ (instancetype)cellModelWithTtitle:(NSString *)title andContent:(NSString *)content withImage:(UIImage *)image{
    GHCellItemModel *model = [self cellModelWithTitle:title andContent:content];
    model.image = image;
    return model;
}

@end
