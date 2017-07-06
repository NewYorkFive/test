//
//  ViewController.m
//  OCDiyRectDemo
//
//  Created by NowOrNever on 29/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "ViewController.h"
#import "DLRectLabel.h"
#import "Masonry.h"
#import "DiyView.swift"
#import "OCDiyRectDemo-Bridging-Header.h"
@interface ViewController ()
@property (nonatomic, strong) DLRectLabel *ocRectLabel;
//@property (nonatomic, strong) ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)setupUI{
    
    [self.view addSubview:self.ocRectLabel];
    [self.ocRectLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.height.mas_equalTo(90);
        make.width.mas_equalTo(160);
    }];
    
    _ocRectLabel.labelCornerRadius = 40;

    
}

- (DLRectLabel *)ocRectLabel{
    if (!_ocRectLabel) {
        _ocRectLabel = [[DLRectLabel alloc]init];
        _ocRectLabel.text = @"test";
        _ocRectLabel.font = [UIFont systemFontOfSize:30];
        _ocRectLabel.textColor = [UIColor whiteColor];
        _ocRectLabel.backgroundColor = [UIColor colorWithRed: 1 / 255.0 green: 150 / 255.0 blue: 1  alpha: 1];
        _ocRectLabel.textAlignment = NSTextAlignmentCenter;
        
        [_ocRectLabel sizeToFit];
        _ocRectLabel.labelTopRightRadius = true;
        _ocRectLabel.labelBottomLeftRadius = true;
    }
    return _ocRectLabel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
