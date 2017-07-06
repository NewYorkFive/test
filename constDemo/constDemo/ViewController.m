//
//  ViewController.m
//  constDemo
//
//  Created by NowOrNever on 26/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self setupUI];
    NSLog(@"%d",[self testWithNumber1:1 andNumber2:2]);
}

- (int)testWithNumber1:(int)number1 andNumber2:(int)number2{
    return number1 + number2;
}

- (void)setupUI{
    const int a = 6;
//    NSLog(@"%zd",a);
//    a = 7;    //  错误，常量
//    NSLog(@"%zd",a);
    
    int const b = 6;
//    b = 9; // error,常量
    
    int valueA = 6;
    int valueB = 8;
    const int *pointerA = &valueA;//    int const *pointerA = &valueA; 相等
    pointerA = &valueB;
//    *pointerA = 8; //error,pointerA指向一个数，该数不可变
    //指针可变，指针内容不可变
    
    int * const pointerC = &valueA;
    *pointerC = 9;
//    pointerC = &valueB; //error, * 在const左边，表明该指针不可变
    
//    int * const pointerC = &valueA;
//    修饰p则p的值不可改,p为指针，指针内容为地址，不可改
    
//    const 修饰 *p, 则*p内容不可改，指向的对象不可改


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
