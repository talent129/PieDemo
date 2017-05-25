//
//  SectorView.m
//  Pie
//
//  Created by mac on 17/5/25.
//  Copyright © 2017年 cai. All rights reserved.
//

#import "SectorView.h"

@implementation SectorView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //获取图形上下文
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    //创建路径对象
    CGPoint centerP = CGPointMake(rect.size.width * 0.5, rect.size.height * 0.5);
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:centerP radius:MIN(rect.size.width * 0.5, rect.size.height * 0.5) startAngle:0 endAngle:M_PI_2 clockwise:YES];
    
    //到中心连一条线
    [path addLineToPoint:centerP];
    
    //路径对象添加到上下文中
    CGContextAddPath(ref, path.CGPath);
    
    //设置颜色
    [[UIColor redColor] set];
    
    //渲染
    CGContextDrawPath(ref, kCGPathFill);
}

@end
