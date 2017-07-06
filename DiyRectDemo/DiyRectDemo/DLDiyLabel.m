//
//  DLDiyLabel.m
//  DiyRectDemo
//
//  Created by NowOrNever on 27/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//
#import "Masonry.h"
#import "DLDiyLabel.h"

@interface DLDiyLabel ()
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIImageView *backGroundImageView;
@end

@implementation DLDiyLabel

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    return self;
}


- (void)setupUI{
//    self.backgroundColor = [UIColor colorWithRed: 1 / 255.0 green: 150 / 255.0 blue: 1  alpha: 1];
    [self addSubview:self.backGroundImageView];
    [self addSubview:self.label];
    
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self.backGroundImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.height.mas_equalTo(self.bounds.size.height * 0.8);
//        make.width.mas_equalTo(self.bounds.size.width * 0.7);
        make.center.equalTo(self);
    }];

}

- (void)setLabelString:(NSString *)labelString{
    _labelString = labelString;
    self.label.text = labelString;
}

- (void)setLabelFontSize:(CGFloat)labelFontSize{
    _labelFontSize = labelFontSize;
    self.label.font = [UIFont systemFontOfSize:labelFontSize];
}

- (UILabel *)label{
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.text = @"1处介绍";
        _label.font = [UIFont systemFontOfSize:25];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.textColor = [UIColor whiteColor];
//        _label.backgroundColor = [UIColor colorWithRed: 1 / 255.0 green: 150 / 255.0 blue: 1  alpha: 1];
    }
    return _label;
}

- (UIImageView *)backGroundImageView{
    if (!_backGroundImageView) {
        _backGroundImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"WechatIMG5"]];
    }
    return _backGroundImageView;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
