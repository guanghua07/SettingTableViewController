//
//  GHArrowCellItemModel.m
//  SettingTableViewController
//
//  Created by ken on 2017/3/24.
//  Copyright © 2017年 Ken.Liu. All rights reserved.
//

#import "GHArrowCellItemModel.h"

@implementation GHArrowCellItemModel

+ (instancetype)cellArrowItemModelWithImage:(UIImage *)image title:(NSString *)title destVcClass:(Class)destVcClass{
    //不知道为什么第一句就不行，如果用第一句那么后面setting中的所有cell返回的都是IMCellModel类型而不是两种自类型，weird；现在知道了
    GHArrowCellItemModel *model = [[self alloc] init];
    model.image = image;
    model.title = title;
    model.destVcClass = destVcClass;
    return model;
}

+ (instancetype)cellArrowItemModelWithTitle:(NSString *)title destVcClass:(Class)destVcClass {
    GHArrowCellItemModel *model = [[self alloc] init];
    model.title = title;
    model.destVcClass = destVcClass;
    return model;
}

@end
