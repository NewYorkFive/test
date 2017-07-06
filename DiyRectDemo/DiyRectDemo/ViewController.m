//
//  ViewController.m
//  DiyRectDemo
//
//  Created by NowOrNever on 27/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "ViewController.h"
#import "DLDiyLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}


- (void)setupUI{
    DLDiyLabel *label = [[DLDiyLabel alloc]initWithFrame:CGRectMake(0, 0, 200, 80)];
    label.labelFontSize = 30;
    label.labelString = @"9处介绍";
    [self.view addSubview:label];
    label.center = self.view.center;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
