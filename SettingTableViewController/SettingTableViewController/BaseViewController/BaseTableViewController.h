//
//  BaseTableViewController.h
//  SettingTableViewController
//
//  Created by ken on 2017/3/24.
//  Copyright © 2017年 Ken.Liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GHCellItemModel.h"
#import "GHArrowCellItemModel.h"
#import "GHSwithCellModel.h"
#import "GHBubbleCellModel.h"
#import "GHCellGroupModel.h"
@interface BaseTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *dataSource;

@end
