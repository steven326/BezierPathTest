//
//  BezierPathView.m
//  AnimateTest
//
//  Created by Steven on 2017/9/11.
//  Copyright © 2017年 Steven. All rights reserved.
//

#import "BezierPathView.h"

@interface BezierPathView ()

@property (nonatomic, strong) CAShapeLayer *shapeLayer;

@end

@implementation BezierPathView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    // 线条颜色
    UIColor *lineColor = [[UIColor redColor] colorWithAlphaComponent:.5f];
    [lineColor set];
    
    
    // ---------------直线---------------
    /**
     UIBezierPath *path = [UIBezierPath bezierPath];
     [path setLineWidth:4.f];
     // 线条拐角
     [path setLineCapStyle:kCGLineCapRound];
     // 终点处理
     [path setLineJoinStyle:kCGLineJoinRound];
     // 起点
     [path moveToPoint:CGPointMake(50, 0)];
     // 划线
     [path addLineToPoint:CGPointMake(0, 50)];
     [path addLineToPoint:CGPointMake(50, 100)];
     [path addLineToPoint:CGPointMake(100, 50)];
     [path addLineToPoint:CGPointMake(50, 0)];
     [path stroke];
     */

    
    // ---------------圆---------------
    /**
     ArcCenter: 原点
     radius: 半径
     startAngle: 开始角度
     endAngle: 结束角度
     clockwise: 是否顺时针方向 /
     */
    /**
     UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.frame.size.width/2, self.frame.size.height/2) radius:self.frame.size.height/2-1 startAngle:0 endAngle:M_PI*2 clockwise:true];
     path.lineWidth = 1.0;
     path.lineCapStyle = kCGLineCapRound;
     path.lineJoinStyle = kCGLineJoinRound;
     [path stroke];
     */
    
    
    // ---------------二次贝塞尔曲线---------------
    /*
     - (void)addQuadCurveToPoint:(CGPoint)endPoint controlPoint:(CGPoint)controlPoint
     Parameters
     endPoint
     The end point of the curve.
     controlPoint
     The control point of the curve.
     */
    /**
     UIBezierPath *path = [UIBezierPath bezierPath];
     path.lineWidth = 1.0;
     path.lineCapStyle = kCGLineCapRound;
     path.lineJoinStyle = kCGLineJoinRound;
     [path moveToPoint:CGPointMake(0, 100)];
     [path addQuadCurveToPoint:CGPointMake(100, 100) controlPoint:CGPointMake(20, 0)];
     [path stroke];
     */
    
    
    // ---------------三次贝塞尔曲线---------------
    /**
     UIBezierPath *path = [UIBezierPath bezierPath];
     path.lineWidth = 1.0;
     path.lineCapStyle = kCGLineCapRound;
     path.lineJoinStyle = kCGLineJoinRound;
     [path moveToPoint:CGPointMake(0, 100)];
     [path addCurveToPoint:CGPointMake(100, 0) controlPoint1:CGPointMake(0, 50) controlPoint2:CGPointMake(100, 50)];
     [path stroke];
     */
    
    
    // ---------------设置任意角为圆角---------------
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 100, 100) byRoundingCorners:UIRectCornerTopRight|UIRectCornerTopLeft|UIRectCornerBottomLeft cornerRadii:CGSizeMake(20, 20)];
//    path.lineCapStyle = kCGLineCapRound;
//    path.lineJoinStyle = kCGLineJoinRound;
//    path.lineWidth = 1.0;
//    [path stroke];
    
    
    
    //创建出CAShapeLayer
    self.shapeLayer = [CAShapeLayer layer];
    self.shapeLayer.frame = CGRectMake(0, 0, 100, 100);//设置shapeLayer的尺寸和位置
    self.shapeLayer.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    self.shapeLayer.fillColor = [UIColor clearColor].CGColor;//填充颜色为ClearColor
    
    //设置线条的宽度和颜色
    self.shapeLayer.lineWidth = 1.0f;
    self.shapeLayer.strokeColor = [UIColor redColor].CGColor;
    self.shapeLayer.fillColor = [[UIColor greenColor] colorWithAlphaComponent:.5f].CGColor;
    
    //创建出圆形贝塞尔曲线
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    
    //让贝塞尔曲线与CAShapeLayer产生联系
    self.shapeLayer.path = circlePath.CGPath;
    
    //添加并显示
    [self.layer addSublayer:self.shapeLayer];
    
    
}

@end
