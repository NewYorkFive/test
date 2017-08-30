//
//  GamePrototypeViewController.m
//  UIViewPenetrate
//
//  Created by NowOrNever on 01/08/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "GamePrototypeViewController.h"

@interface GamePrototypeViewController ()
@property (weak, nonatomic) IBOutlet UIView *boxView;

@end

@implementation GamePrototypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)setupUI{
    self.boxView.layer.borderColor = [UIColor redColor].CGColor;
    self.boxView.layer.borderWidth = 2;
    
    NSLog(@"%@",[[NSBundle mainBundle]resourcePath]);
    
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
