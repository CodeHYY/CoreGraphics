//
//  textView.m
//  CoreGraphicsDemo
//
//  Created by toro宇 on 2018/7/27.
//  Copyright © 2018年 CodeYu. All rights reserved.
//

#import "textView.h"

@implementation textView


-(void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    [self drawLine];
    [self drawLines];
    [self drawArcs];
    [self drawCurves];
    [self drawElipses];
    [self drawRECT];
    [self drawConcenttricClicles];
}

//Mark: 绘制直线

- (void)drawLine
{
    // 绘制一条直线
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ref, 10, 80);
    CGContextAddLineToPoint(ref, self.frame.size.width - 20, 80);
    
    // 描边的属性
    CGContextSetStrokeColor(ref, CGColorGetComponents([UIColor colorWithRed:0 green:0 blue:1 alpha:1].CGColor));
    CGContextSetLineWidth(ref, 2.0);
    CGContextSetLineCap(ref, kCGLineCapRound);
    CGContextStrokePath(ref);
    
}

//:MARK: 绘制多条直线,做成一个三角形

-(void)drawLines
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ref, 30, 100);
    CGContextAddLineToPoint(ref, 60, 50);
    CGContextAddLineToPoint(ref, 90, 100);
    CGContextClosePath(ref);
    
    CGContextSetStrokeColor(ref, CGColorGetComponents([UIColor redColor].CGColor));
    CGContextSetLineJoin(ref, kCGLineJoinRound);
    CGContextSetLineWidth(ref, 3);
    CGContextStrokePath(ref);
}
//
//-(void)drawArcs
//{
//        CGContextRef ref = UIGraphicsGetCurrentContext();
//        CGContextMoveToPoint(ref, 50, 30);
//        CGContextAddLineToPoint(ref, 150, 30);
//        CGContextAddArcToPoint(ref, 200, 30, 150, 70, 20);
//
//        CGContextSetStrokeColor(ref, CGColorGetComponents([UIColor yellowColor].CGColor));
//        CGContextSetLineWidth(ref, 5);
//        CGContextSetLineJoin(ref, kCGLineJoinRound);
//    CGContextSetLineCap(ref, kCGLineCapRound);
//        CGContextStrokePath(ref);
//}

//: MARK: 绘制一条圆弧
-(void)drawArcs
{
    // 获取上下文
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    // 设置属性
    CGContextSetStrokeColor(ref, CGColorGetComponents([UIColor greenColor].CGColor));
    CGContextSetLineCap(ref, kCGLineCapRound);
    
    // 方式一：当前点于第一个end点的连线，第一个end点与第二个end点的连线构成相交的两个线段，绘制与这两条直线相切并且满足半径条件的圆弧。
    CGContextMoveToPoint(ref, 150, 30);
    CGContextAddArcToPoint(ref, 300, 30, 150, 100, 33);
    CGContextClosePath(ref);
    CGContextStrokePath(ref);
}

 //: MARK: 绘制贝塞尔曲线
-(void)drawCurves
{
    // 获取上下文
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    // 设置属性
    CGContextSetStrokeColor(ref, CGColorGetComponents([UIColor greenColor].CGColor));
    CGContextSetLineCap(ref, kCGLineCapRound);
    
    // 设置路线
    CGContextMoveToPoint(ref, 10, 140);
    //二阶 一个峰值
//    CGContextAddQuadCurveToPoint(ref, 40, 200, 200, 140);
    // 三阶 两个峰值
    CGContextAddCurveToPoint(ref, 100, 100, 250, 190, 300, 140);
//    CGContextClosePath(ref);
    // 划线 确定两个端点 以及峰值即可.
    CGContextStrokePath(ref);
    
}

 //: MARK: 绘制椭圆

-(void)drawElipses
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColor(ref, CGColorGetComponents([UIColor greenColor].CGColor));
    CGContextSetFillColor(ref, CGColorGetComponents([UIColor blueColor].CGColor));
    CGContextSetLineWidth(ref, 3.0);
    CGContextAddEllipseInRect(ref, CGRectMake(100, 100, 100, 60));
//    CGContextStrokePath(ref);
//    CGContextFillPath(ref);
    
    CGContextDrawPath(ref, kCGPathFillStroke);
}
 //: MARK: 绘制矩形
- (void)drawRECT
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextSetFillColor(ref, CGColorGetComponents([UIColor blueColor].CGColor));
    CGContextSetStrokeColor(ref, CGColorGetComponents([UIColor greenColor].CGColor));
    CGContextSetLineWidth(ref, 3.0);
    CGContextSetLineCap(ref, kCGLineCapRound);
    CGContextAddRect(ref, CGRectMake(200, 100, 100, 200));
    CGContextDrawPath(ref, kCGPathFillStroke);
}

//: MARK: 绘制一个同心圆

-(void)drawConcenttricClicles
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextSetFillColor(ref, CGColorGetComponents([UIColor redColor].CGColor));
    
    CGContextSetStrokeColor(ref, CGColorGetComponents([UIColor blueColor].CGColor));
    CGContextAddArc(ref, 100, 300, 80, 10, 180, false);
    CGContextAddArc(ref, 100, 300, 40, 10, 180, true);
    CGContextEOFillPath(ref);
}

























@end
