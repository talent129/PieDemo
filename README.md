# PieDemo

# 饼状图

//绘制一个饼状图
//构建数据
NSArray *data = @[@15, @30, @12, @18, @25];

//获取图形上下文
CGContextRef ref = UIGraphicsGetCurrentContext();

//创建路径
//确定圆心
CGPoint centerP = CGPointMake(rect.size.width * 0.5, rect.size.height * 0.5);

//半径
CGFloat r = MIN(rect.size.width, rect.size.height) * 0.5;

//起始弧度
CGFloat start = 0;

//终止弧度
CGFloat end = 0;

for (int i = 0; i < data.count; i ++) {

//计算起始和终止弧度

//终止弧度
end = [data[i] floatValue] / 100.0 * (M_PI * 2) + start;

//

UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:centerP radius:r startAngle:start endAngle:end clockwise:YES];

//连一条到中心点的线
[path addLineToPoint:centerP];

//路径添加到上下文中
CGContextAddPath(ref, path.CGPath);

//下一个扇形的起始弧度就是上一个扇形的终止弧度
start = end;

//设置颜色
[[UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1] set];
//渲染
CGContextDrawPath(ref, kCGPathFill);
}

//    //中间再画一个圆
//    UIBezierPath *pathInside = [UIBezierPath bezierPathWithArcCenter:centerP radius:r - 50 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
//    CGContextAddPath(ref, pathInside.CGPath);
//    [self.backgroundColor set];
//    CGContextDrawPath(ref, kCGPathFill);
