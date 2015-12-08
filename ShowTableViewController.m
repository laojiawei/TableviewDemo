//
//  ShowTableViewController.m
//  TableviewDemo
//
//  Created by Angel on 15/11/27.
//  Copyright © 2015年 lq. All rights reserved.
//

#import "ShowTableViewController.h"

@interface ShowTableViewController ()<UITableViewDataSource,UITableViewDataSource>

@end

@implementation ShowTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:[self bottomButton]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return section==0?4:5;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20.0f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 10.0f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString * cellIdentifier = [NSString stringWithFormat:@"cell_%ld%ld",(long)indexPath.row,(long)indexPath.section];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    // Configure the cell...
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0:
                cell.textLabel.text = @"病人主诉当前情况";
                break;
            case 1:
                cell.textLabel.text = @"发现症状";
                break;
            case 2:
                cell.textLabel.text = @"是否使用降压药";
                break;
            case 3:
                cell.textLabel.text = @"是否有高血压历史";
                break;
            case 4:
                cell.textLabel.text = @"病人主诉当前情况";
                break;
                
                
            default:
                break;
        }
    }
    else
    {
        switch (indexPath.row) {
            case 0:
                cell.textLabel.text = @"体重";
                break;
            case 1:
                cell.textLabel.text = @"身高";
                break;
            case 2:
                cell.textLabel.text = @"年龄";
                break;
            case 3:
                cell.textLabel.text = @"是否有高血压历史";
                break;
            case 4:
                cell.textLabel.text = @"病人主诉当前情况";
                break;
            case 5:
                cell.textLabel.text = @"病人主诉当前情况";
                break;
            
                
            default:
                break;
    }
    }
    
    return cell;
}
- (UIButton *)bottomButton{
    UIButton * confirmButton = [UIButton buttonWithType:UIButtonTypeCustom];
    confirmButton.frame = CGRectMake(0, CGRectGetMaxY(self.tableView.frame), CGRectGetWidth(self.tableView.frame), 50);
    [confirmButton setTitle:@"确认" forState:UIControlStateNormal];
    [confirmButton setBackgroundColor:[UIColor blueColor]];
    return confirmButton;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
