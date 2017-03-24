//
//  BaseTableViewController.m
//  SettingTableViewController
//
//  Created by ken on 2017/3/24.
//  Copyright © 2017年 Ken.Liu. All rights reserved.
//

#import "BaseTableViewController.h"
#import "GHCellItemModel.h"
#import "GHCellGroupModel.h"
#import "GHTableViewCell.h"
#import "GHArrowCellItemModel.h"


@interface BaseTableViewController ()

@end

@implementation BaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[GHTableViewCell class] forCellReuseIdentifier:@"GHTableViewCell"];
}


- (NSMutableArray *)dataSource {
    if (!_dataSource) {
        _dataSource = [NSMutableArray array];
    }
    return _dataSource;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataSource.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    GHCellGroupModel *group = self.dataSource[section];
    return group.items.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    GHCellGroupModel *group= self.dataSource[section];
    return group.header;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    GHCellGroupModel *group= self.dataSource[section];
    return group.footer;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    GHTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GHTableViewCell"];
    GHCellGroupModel *group= self.dataSource[indexPath.section];
    cell.model = group.items[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    GHCellGroupModel *group= self.dataSource[indexPath.section];
    GHCellItemModel *item = group.items[indexPath.row];
    
    if (item.clickBlock){
        item.clickBlock();
    }
    if ([item isKindOfClass:[GHArrowCellItemModel class]]) {
        GHArrowCellItemModel *arrowModel = (GHArrowCellItemModel *)item;
        if (arrowModel.destVcClass) {
            UIViewController *controller = [[arrowModel.destVcClass alloc] init];
            controller.title = arrowModel.title;
            [self.navigationController pushViewController:controller animated:YES];
        }
    };
}


@end
