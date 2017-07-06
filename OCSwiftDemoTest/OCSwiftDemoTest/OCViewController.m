//
//  OCViewController.m
//  SwiftOCDemoTest
//
//  Created by NowOrNever on 30/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "OCViewController.h"
//  如果oc里面想要使用swift代码需要导入swift提供的系统的头文件
//  swift的头文件默认是"工程名-Swift.h"
//  不能包含'-'
//#import "test-Swift.h"
#import "OCSwiftDemoTest-Swift.h"

@interface OCViewController ()

@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)setupUI{
    self.view.backgroundColor = [UIColor colorWithRed: 1 / 255.0 green: 150 / 255.0 blue: 1  alpha: 1];
    
    UILabel *label = [[UILabel alloc]init];
    label.text = @"ocViewController";
    [label sizeToFit];
    [self.view addSubview:label];
    label.center = self.view.center;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    ViewController *swiftVc = [[ViewController alloc]init];
    [swiftVc swiftShowInfo];
    [self presentViewController:swiftVc animated:true completion:nil];
}

- (void)OCShowInfo{
    NSLog(@"OCVc info");
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
