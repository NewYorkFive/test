//
//  DLRectLabel.h
//  OCDiyRectDemo
//
//  Created by NowOrNever on 29/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DLRectLabel : UILabel

@property (nonatomic, assign) BOOL labelTopLeftRadius;
@property (nonatomic, assign) BOOL labelTopRightRadius;
@property (nonatomic, assign) BOOL labelBottomLeftRadius;
@property (nonatomic, assign) BOOL labelBottomRightRadius;
@property (nonatomic, assign) CGFloat labelCornerRadius;

@end
