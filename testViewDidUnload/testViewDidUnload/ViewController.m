//
//  ViewController.m
//  testViewDidUnload
//
//  Created by NowOrNever on 28/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload{
    NSLog(@"ViewDidUndload");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
