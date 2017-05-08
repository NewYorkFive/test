//
//  DLImageEffectViewController.m
//  test
//
//  Created by NowOrNever on 08/05/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "DLImageEffectViewController.h"
#import "ImageEffects.h"
#import "Masonry.h"

@interface DLImageEffectViewController ()

@end

@implementation DLImageEffectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)setupUI{
    UIImage *image = [UIImage imageNamed:@"background"];
    UIColor *tintColor = [UIColor colorWithWhite:0.97 alpha:0.32];
    image =  [image blurredImageWithSize:CGSizeMake(5, 5) tintColor:tintColor saturationDeltaFactor:1.8 maskImage:nil];

    
    
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    [self.view addSubview:imageView];
    
    imageView.frame = self.view.bounds;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self dismissViewControllerAnimated:false completion:nil];
    [self.navigationController popViewControllerAnimated:false];
}

@end
