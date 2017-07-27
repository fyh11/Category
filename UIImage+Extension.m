//
//  UIImage+Extension.m
//  YHSliderLib
//
//  Created by 樊义红 on 2017/7/20.
//  Copyright © 2017年 樊义红. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage *)imageWithColor: (UIColor *)color
{
    CGFloat floatH = 100;
    CGFloat floatW = 100;
    
    // 开启上下文
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(floatW, floatH), NO, 0.0);
    
    // 绘制一个颜色的矩形框
    [color set];
    UIRectFill(CGRectMake(0, 0, floatW, floatH));
    
    // 拿到图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    // 关闭上下文
    UIGraphicsEndImageContext();
    
    // 返回图片
    return image;
    
}

@end
