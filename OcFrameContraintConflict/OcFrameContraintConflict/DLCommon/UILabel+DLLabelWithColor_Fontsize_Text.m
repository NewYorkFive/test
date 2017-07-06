//
//  UILabel+DLLabelWithColor_Fontsize_Text.m
//
//  Created by NowOrNever on 04/01/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import "UILabel+DLLabelWithColor_Fontsize_Text.h"

@implementation UILabel (DLLabelWithColor_Fontsize_Text)
+ (instancetype)dl_labelWithColor:(UIColor *)color andFontSize:(double)fontSize andText:(NSString *)text{
    UILabel *label = [[UILabel alloc]init];
    label.text = text;
    label.textColor = color;
    label.font = [UIFont systemFontOfSize:fontSize];
    return label;
}

@end
