//
//  DLRectLabel.m
//  OCDiyRectDemo
//
//  Created by NowOrNever on 29/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "DLRectLabel.h"

@implementation DLRectLabel

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:(self.labelBottomLeftRadius?UIRectCornerBottomLeft:0)|(self.labelBottomRightRadius?UIRectCornerBottomRight:0)|(self.labelTopLeftRadius?UIRectCornerTopLeft:0)|(self.labelTopRightRadius?UIRectCornerTopRight:0) cornerRadii:CGSizeMake(self.labelCornerRadius, self.labelCornerRadius)];
    
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc]init];
    shapeLayer.path = path.CGPath;
    
    self.layer.mask = shapeLayer;
}

@end
