//
//  UIButton+DLButton.m
//
//  Created by NowOrNever on 10/02/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import "UIButton+DLButton.h"

@implementation UIButton (DLButton)

+ (instancetype)dl_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor {
    
    UIButton *button = [[self alloc] init];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:normalColor forState:UIControlStateNormal];
    [button setTitleColor:selectedColor forState:UIControlStateSelected];
    
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    [button sizeToFit];
    
    return button;
}


+ (instancetype)dl_buttonWithNormalBackgroundImageName:(NSString *)normalBackgroundImageName highlightedBackgroundImageImage:(NSString *)highlightedBackgroundImageImage{
    return [self dl_buttonWithNormalBackgroundImageName:normalBackgroundImageName selectedBackgroundImageName:nil highlightedBackgroundImageImage:highlightedBackgroundImageImage focusedBackgroundImageName:nil disableBackgroundImageName:nil];
}

+ (instancetype)dl_buttonWithNormalBackgroundImageName:(NSString *)normalBackgroundImageName selectedBackgroundImageName:(NSString *)selectedBackgroundImageName{
    return [self dl_buttonWithNormalBackgroundImageName:normalBackgroundImageName selectedBackgroundImageName:selectedBackgroundImageName highlightedBackgroundImageImage:nil focusedBackgroundImageName:nil disableBackgroundImageName:nil];
}

+ (instancetype)dl_buttonWithNormalBackgroundImageName:(NSString *)normalBackgroundImageName selectedBackgroundImageName:(NSString *)selectedBackgroundImageName highlightedBackgroundImageImage:(NSString *)highlightedBackgroundImageImage focusedBackgroundImageName:(NSString *)focusedBackgroundImageName disableBackgroundImageName:(NSString *)disableBackgroundImageName{
    UIButton *button = [[self alloc]init];
    
    [button setBackgroundImage:[UIImage imageNamed:normalBackgroundImageName] forState:UIControlStateNormal];
    if (selectedBackgroundImageName != nil) {
        [button setBackgroundImage:[UIImage imageNamed:selectedBackgroundImageName] forState:UIControlStateSelected];
    }
    if (highlightedBackgroundImageImage != nil) {
        [button setBackgroundImage:[UIImage imageNamed:highlightedBackgroundImageImage] forState:UIControlStateHighlighted];
    }
    if (focusedBackgroundImageName != nil) {
        [button setBackgroundImage:[UIImage imageNamed:focusedBackgroundImageName] forState:UIControlStateFocused];
    }
    if (disableBackgroundImageName != nil) {
        [button setBackgroundImage:[UIImage imageNamed:disableBackgroundImageName] forState:UIControlStateDisabled];
    }
    [button sizeToFit];
    
    return button;
}

@end
