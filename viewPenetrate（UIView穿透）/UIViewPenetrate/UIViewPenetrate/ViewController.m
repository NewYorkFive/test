//
//  ViewController.m
//  UIViewPenetrate
//
//  Created by NowOrNever on 01/08/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "ViewController.h"
#import "UIViewTest1.h"
#import "UIViewTest2.h"
@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}


- (void)setupUI{
//    self.view.backgroundColor = [UIColor colorWithRed: 1 / 255.0 green: 150 / 255.0 blue: 1  alpha: 1];
//    UIViewTest1 *test1View = [[UIViewTest1 alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
//    test1View.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:test1View];


    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [btn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    UIViewTest2 *test2View = [[UIViewTest2 alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:test2View];
    test2View.backgroundColor = [UIColor clearColor];
//    test2View.userInteractionEnabled = false;
    btn.center = test2View.center;
    
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    CGPoint touchPoint = [[touches anyObject] locationInView:self.view];
    
    NSArray* buttonArray = [self.view subviews];
//    [self.view hitTest:touchPoint withEvent:event];
    NSLog(@"viewTouchBegan");
}

- (void)buttonAction:(UIButton *)btn{
    NSLog(@"view Btn Action");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
