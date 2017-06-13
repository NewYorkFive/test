//
//  DLFourPartViewController.m
//  test
//
//  Created by NowOrNever on 13/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "DLFourPartViewController.h"

#import "DLFourPartView.h"

//正方形的view，对角线切成4块，添加点击事件响应4种操作

@interface DLFourPartViewController ()

@end

@implementation DLFourPartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)setupUI{
    DLFourPartView *view = [[DLFourPartView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:view];
    view.center = self.view.center;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
