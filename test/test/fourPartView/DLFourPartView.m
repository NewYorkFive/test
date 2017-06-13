//
//  DLFourPartView.m
//  test
//
//  Created by NowOrNever on 13/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "DLFourPartView.h"
#import "DLCommon.h"
@implementation DLFourPartView
////正方形的view，对角线切成4块，添加点击事件响应4种操作
- (void)drawRect:(CGRect)rect{
    
    CGPoint center = CGPointMake(rect.size.width * 0.5, rect.size.height * 0.5);
    
    CGPoint leftTopPoint = CGPointMake(0, 0);
    
    CGPoint rightTopPoint = CGPointMake(rect.size.width, 0);
    
    CGPoint leftBottomPoint = CGPointMake(0, rect.size.height);
    
    CGPoint rightBottomPoint = CGPointMake(rect.size.width, rect.size.height);
    
    UIBezierPath *path1 = [UIBezierPath bezierPath];
    [path1 moveToPoint:leftTopPoint];
    [path1 addLineToPoint:center];
    [path1 addLineToPoint:rightTopPoint];
//    [path1 addLineToPoint:leftTopPoint];
    [path1 closePath];
    [[UIColor dl_randomColor] set];
    [path1 fill];
    
    UIBezierPath *path2 = [UIBezierPath bezierPath];
    [path2 moveToPoint:rightTopPoint];
    [path2 addLineToPoint:center];
    [path2 addLineToPoint:rightBottomPoint];
    [path2 closePath];
    [[UIColor dl_randomColor] set];
    [path2 fill];
    
    UIBezierPath *path3 = [UIBezierPath bezierPath];
    [path3 moveToPoint:rightBottomPoint];
    [path3 addLineToPoint:center];
    [path3 addLineToPoint:leftBottomPoint];
    [path3 closePath];
    [[UIColor dl_randomColor] set];
    [path3 fill];
    
    UIBezierPath *path4 = [UIBezierPath bezierPath];
    [path4 moveToPoint:leftBottomPoint];
    [path4 addLineToPoint:center];
    [path4 addLineToPoint:leftTopPoint];
    [path4 closePath];
    [[UIColor dl_randomColor]set];
    [path4 fill];
    
}

- (void)functionWithNumber:(int)number{
    NSLog(@"function%zd",number);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    
    if (point.x > point.y) { //1、2
        if (point.y < self.bounds.size.height - point.x) {
            [self functionWithNumber:1];
        }else{
            [self functionWithNumber:2];
        }
    }else{
        if (point.y < self.bounds.size.height - point.x) {
            [self functionWithNumber:4];
        }else{
            [self functionWithNumber:3];
        }
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
