//
//  ViewController.m
//  TableviewDemo
//
//  Created by Angel on 15/11/27.
//  Copyright © 2015年 lq. All rights reserved.
//

#import "ViewController.h"
#import "ShowTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnClick:(id)sender {
    ShowTableViewController * vc = [[ShowTableViewController alloc] init];

    [self presentViewController:vc animated:YES completion:nil];
}

@end
