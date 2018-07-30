//
//  FirstViewController.h
//  CoreGraphicsDemo
//
//  Created by toro宇 on 2018/7/25.
//  Copyright © 2018年 CodeYu. All rights reserved.
//  Core Graphics框架学习之在图片上绘制文字

/*
 图片上的文字可以更改，文字大小也可以更改。
 
   iOS支持两套图形API族：Core Graphics/Quartz 2D和OpenGL ES，OpenGL ES属于跨平台的图形API，属于OpenGL的一个简化版。而QuartZ 2D是苹果公司开发的一套API，它是Core Graphics FrameWork的一部分。Core Graphics FrameWork是基于C的一套绘图API，使用了Quartz作为绘图引擎。它的所有操作都在一个上下文中进行，所以在绘图之前需要获取该上下文(context)并传入执行渲染的函数中。假如你正在渲染一张在内存中的图片，此时需要传入该图片所属的上下文。获得一个图片的上下文是绘图的第一步，如下代码：
 **/

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController


@end
