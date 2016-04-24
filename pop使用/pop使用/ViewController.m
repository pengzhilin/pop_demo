//
//  ViewController.m
//  pop使用
//
//  Created by pengzhilin on 16/4/16.
//  Copyright © 2016年 pengzhilin. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong)NSArray *array;
@end

@implementation ViewController

-(NSArray *)array{
    if (_array == nil) {
        _array = [NSArray new];
    }
    return _array;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.array = @[@"健康",@"北京",@"上海",@"天津",@"天津"];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *ID = @"cell";
    
    TableViewCell *cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    
    if (cell == nil) {
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    
    cell.textLabel.text = self.array[indexPath.row];
    
    return cell;
    
}



- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [NSString stringWithFormat:@"第%ld分组",(long)section];
}

//
//-(UIStatusBarStyle)preferredStatusBarStyle{
//    return UIStatusBarStyleLightContent;
//}

@end
