//
//  UIButton+DLButton.h
//
//  Created by NowOrNever on 10/02/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (DLButton)

/// 创建文本按钮
///
/// @param title         文本
/// @param fontSize      字体大小
/// @param normalColor   默认颜色
/// @param selectedColor 选中颜色
///
/// @return UIButton
+ (instancetype)dl_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor;

+ (instancetype)dl_buttonWithNormalBackgroundImageName:(NSString *)normalBackgroundImageName highlightedBackgroundImageImage:(NSString *)highlightedBackgroundImageImage;

+ (instancetype)dl_buttonWithNormalBackgroundImageName:(NSString *)normalBackgroundImageName selectedBackgroundImageName:(NSString *)selectedBackgroundImageName;

+ (instancetype)dl_buttonWithNormalBackgroundImageName:(NSString *)normalBackgroundImageName selectedBackgroundImageName:(NSString *)selectedBackgroundImageName highlightedBackgroundImageImage:(NSString *)highlightedBackgroundImageImage focusedBackgroundImageName:(NSString *)focusedBackgroundImageName disableBackgroundImageName:(NSString *)disableBackgroundImageName;

@end
