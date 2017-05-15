//
//  ViewController.m
//  test
//
//  Created by NowOrNever on 08/05/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "ViewController.h"
#import "DLImageEffectViewController.h"
#import "DLLargePictureViewController.h"

@interface ViewController ()
//@property (nonatomic, copy) NSString *imageName;
@end

static NSString *imageName = @"timg";

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed: 1 / 255.0 green: 150 / 255.0 blue: 1  alpha: 1];
//    [self testImageEffect];
    [self testLargeImage];
}



#pragma mark: test2.0 largeImage
- (void)testLargeImage{
    UIButton *btn = [[UIButton alloc]init];
    [self.view addSubview:btn];
    [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];

    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(200, 200));
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view);
    }];
    
    
    [btn addTarget:self action:@selector(testLargeImageAction) forControlEvents:UIControlEventTouchUpInside];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self testLargeImageAction];
    });
//    [self testLargeImageAction];
}




- (void)testLargeImageAction{
    DLLargePictureViewController *targetVc = [[DLLargePictureViewController alloc]init];
    targetVc.imageName = imageName;
    UINavigationController *targetNav = [[UINavigationController alloc]initWithRootViewController:targetVc];
    [self presentViewController:targetNav animated:false completion:nil];
}


#pragma mark: test1.0 ImageEffect
- (void)testImageEffect{
    [self.navigationController pushViewController:[[DLImageEffectViewController alloc]init] animated:false];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated{
//    [self presentViewController:[[DLImageEffectViewController alloc]init] animated:false completion:nil];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
