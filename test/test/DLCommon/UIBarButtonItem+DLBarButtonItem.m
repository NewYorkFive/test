//
//  UIBarButtonItem+DLBarButtonItem.m
//  Objective_C_Microblogging
//
//  Created by NowOrNever on 31/03/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "UIBarButtonItem+DLBarButtonItem.h"

@implementation UIBarButtonItem (DLBarButtonItem)
+ (instancetype _Nullable )dl_navBarButtonWithTarget:(nullable id)target action:(nullable SEL)action  imageName:(NSString *)imageName title:(NSString *_Nullable)title{
    UIButton *button = [[UIButton alloc] init];
    if (imageName != nil) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    [button setTitle:title forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    //custom
    [button setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    
    [button sizeToFit];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}
@end
