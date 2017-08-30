//
//  UIViewTest1.m
//  UIViewPenetrate
//
//  Created by NowOrNever on 01/08/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "UIViewTest1.h"

@implementation UIViewTest1

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"Hi, I am test1.");
}


- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [btn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
    btn.center = self.center;
}

- (void)buttonAction:(UIButton *)btn{
    NSLog(@"test1 Btn Action");
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    UIView *view = [super hitTest:point withEvent:event];
    
    //    NSLog(@"%@",view);
    //    NSLog(@"%@",view.superview.superview);
    
    if (view) {
        return view.superview.superview;//view.superview; or view.superview.superview; or view.superview.superview.superview;... if has
    }else
        return nil;
}

@end
