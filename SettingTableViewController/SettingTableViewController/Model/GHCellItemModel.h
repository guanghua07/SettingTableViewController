//
//  GHCellItemModel.h
//  SettingTableViewController
//
//  Created by ken on 2017/3/24.
//  Copyright © 2017年 Ken.Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^GHDidClickBlock)();

@interface GHCellItemModel : NSObject

/**
 cell前面图片
 */
@property (nonatomic, strong) UIImage *image;

/**
 标题
 */
@property (nonatomic, copy) NSString *title;

/**
 内容
 */
@property (nonatomic, copy) NSString *content;

/**
 点击事件
 */
@property (nonatomic, copy) GHDidClickBlock clickBlock;


+ (instancetype)cellModelWithTitle:(NSString *)title;
+ (instancetype)cellModelWithTitle:(NSString *)title andContent:(NSString *)content;
+ (instancetype)cellModelWithTtitle:(NSString *)title andContent:(NSString *)content withImage:(UIImage *)image;



@end
