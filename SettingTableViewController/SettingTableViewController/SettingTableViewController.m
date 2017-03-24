//
//  SettingTableViewController.m
//  SettingTableViewController
//
//  Created by ken on 2017/3/24.
//  Copyright © 2017年 Ken.Liu. All rights reserved.
//

#import "SettingTableViewController.h"
#import "GHArrowCellItemModel.h"


@interface SettingTableViewController ()

@end

@implementation SettingTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configData];
    [self.tableView reloadData];
}

- (void)configData {
    GHArrowCellItemModel *model00 = [GHArrowCellItemModel cellArrowItemModelWithImage:[UIImage imageNamed:@"MorePush"] title:@"推送和提醒"  destVcClass:[UIViewController class]];
//    IMSwitchCellModel *model01 = [IMSwitchCellModel IMCellModelWithImage:[UIImage imageNamed:@"more_homeshake"] title:@"摇一摇机选"];
//    IMSwitchCellModel *model02 = [IMSwitchCellModel IMCellModelWithImage:[UIImage imageNamed:@"sound_Effect"] title:@"声音效果"];
    GHCellGroupModel *group01 = [[GHCellGroupModel alloc] init];
    group01.items = @[model00];
    //    group01.header = @"zhangdanfeng is the king of the world;";
    //    group01.footer = @"yeh, you are right";
    [self.dataSource addObject:group01];
    
//    IMCellModel *model10 = [IMCellModel IMCellModelWithImage:[UIImage imageNamed:@"MoreUpdate"] title:@"检查新版本"];
//    model10.imBlock = ^{
//        [MBProgressHUD showMessage:@"checking"];
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            [MBProgressHUD hideHUD];
//            [MBProgressHUD showSuccess:@"No Update for your phone"];
//        });
//        
//    };
//    
//    IMArrowCellModel *model11 = [IMArrowCellModel IMArrowCellModelWithImage:[UIImage imageNamed:@"MoreHelp"] title:@"帮助" destVcClass:[HelpTableViewController class]];
//    IMArrowCellModel *model12 = [IMArrowCellModel IMArrowCellModelWithImage:[UIImage imageNamed:@"MoreShare"] title:@"分享" destVcClass:[ShareTableViewController class]];
//    IMArrowCellModel *model13 = [IMArrowCellModel IMArrowCellModelWithImage:[UIImage imageNamed:@"MoreMessage"] title:@"查看消息" destVcClass:[MessageTableViewController class]];
//    IMArrowCellModel *model14 = [IMArrowCellModel IMArrowCellModelWithImage:[UIImage imageNamed:@"MoreNetease"] title:@"产品推荐" destVcClass:[ProductsCollectionViewController class]];
//    IMArrowCellModel *model15 = [IMArrowCellModel IMArrowCellModelWithImage:[UIImage imageNamed:@"MoreAbout"] title:@"关于" destVcClass:[AboutTableViewController class]];
//    IMCellGroupModel *group02 = [[IMCellGroupModel alloc] init];
//    group02.section = @[model10,model11,model12,model13,model14,model15];
//    //    group02.header = @"zhangdanfeng rules the world";
//    //    group02.footer = @"yeh, you are right";
//    [self.cells addObject:group02];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
