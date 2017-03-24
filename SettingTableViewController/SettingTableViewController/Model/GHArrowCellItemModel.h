//
//  GHArrowCellItemModel.h
//  SettingTableViewController
//
//  Created by ken on 2017/3/24.
//  Copyright © 2017年 Ken.Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GHCellItemModel.h"

@interface GHArrowCellItemModel : GHCellItemModel

@property (nonatomic, assign) Class destVcClass;

+ (instancetype)cellArrowItemModelWithImage:(UIImage *)image title:(NSString *)title destVcClass:(Class)destVcClass;
+ (instancetype)cellArrowItemModelWithTitle:(NSString *)title destVcClass:(Class)destVcClass;

@end
