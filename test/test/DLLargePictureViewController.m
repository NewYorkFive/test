//
//  DLLargePictureViewController.m
//  test
//
//  Created by NowOrNever on 08/05/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "DLLargePictureViewController.h"

@interface DLLargePictureViewController ()<UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImage *image;

@property (nonatomic, assign) CGFloat minScale;

@property (nonatomic, strong) NSTimer *timer;
@end

@implementation DLLargePictureViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}




-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    self.navigationController.navigationBar.alpha = 0.1;
}

- (void)setupUI{
    self.automaticallyAdjustsScrollViewInsets = false;
    
    [self.view addSubview:self.scrollView];
    [self.scrollView addSubview:self.imageView];
    [self.scrollView setZoomScale:self.minScale];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(barButtonClick)];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
    [self.scrollView addGestureRecognizer:tap];
}

- (void)tapAction:(UITapGestureRecognizer *)tapAction{
    

    
    [self.timer invalidate];
    self.timer = nil;
    
    BOOL flag = (self.navigationController.navigationBar.alpha == 0.0) ? true : false;
    NSLog(@"flag = %zd",flag);
    
    if (flag) {
        [UIView animateWithDuration:.5 animations:^{
            self.navigationController.navigationBar.alpha = 1.0;
            [self.view layoutIfNeeded];
        }];
    }else{
        [UIView animateWithDuration:.5 animations:^{
            self.navigationController.navigationBar.alpha = 0.0;
            [self.view layoutIfNeeded];
        }];
    }
    
    if (flag) {
        self.timer = [NSTimer scheduledTimerWithTimeInterval:3.0 repeats:false block:^(NSTimer * _Nonnull timer) {
            self.navigationController.navigationBar.alpha = 0.0;
            [UIView animateWithDuration:.5 animations:^{
                [self.view layoutIfNeeded];
            }];
        }];
    }
    
//    BOOL flag = !self.navigationController.navigationBar.hidden;
//    NSLog(@"%zd",flag);
//    [self.navigationController setNavigationBarHidden:flag animated:true];
    
//    if (!flag) {
//        self.timer = [NSTimer scheduledTimerWithTimeInterval:3.0 repeats:false block:^(NSTimer * _Nonnull timer) {
//            [self.navigationController setNavigationBarHidden:true animated:true];
//        }];
//    }
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //    [self.navigationController setNavigationBarHidden:true animated:true];
//    NSLog(@"viewframe:%@",NSStringFromCGRect(self.view.frame));
    
}


- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.timer invalidate];
    self.timer = nil;
}

- (void)barButtonClick{
    [self dismissViewControllerAnimated:false completion:nil];
}



#pragma mark: zoom
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.imageView;
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
    
    CGFloat offsetX = (_scrollView.bounds.size.width > _scrollView.contentSize.width) ? (_scrollView.bounds.size.width - _scrollView.contentSize.width) * 0.5 : 0.0;
    CGFloat offsetY = (_scrollView.bounds.size.height > _scrollView.contentSize.height ) ? (_scrollView.bounds.size.height - _scrollView.contentSize.height ) * 0.5 : 0.0;
//    offsetY -= self.navigationController.navigationBar.bounds.size.height;
    self.imageView.center = CGPointMake(_scrollView.contentSize.width * 0.5 + offsetX, _scrollView.contentSize.height * 0.5 + offsetY);
    
}

#pragma mark: lazy load


- (UIScrollView *)scrollView{
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc]initWithFrame:kScreenBounds];
        _scrollView.delegate = self;
        _scrollView.maximumZoomScale = 5.0;
        _scrollView.minimumZoomScale = 1.5;
        _scrollView.showsVerticalScrollIndicator = false;
        _scrollView.showsVerticalScrollIndicator = false;
    }
    return _scrollView;
}

- (void)setImageName:(NSString *)imageName{
    _imageName = imageName;
    _image = [UIImage imageNamed:imageName];

    self.minScale = 1.0 / _image.size.width * kScreenWidth;
    self.scrollView.minimumZoomScale = self.minScale;
}

- (UIImage *)image{
    if (!_image) {
        _image = [UIImage imageNamed:self.imageName];
    }
    return _image;
}

- (UIImageView *)imageView{
    if (!_imageView) {
        _imageView = [[UIImageView alloc]initWithImage:self.image];
        _imageView.userInteractionEnabled = true;
    }
    return _imageView;
}






@end
