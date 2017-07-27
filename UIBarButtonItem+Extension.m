//
//  UIBarButtonItem+Extension.m
//  YHSliderLib
//
//  Created by 樊义红 on 2017/7/20.
//  Copyright © 2017年 樊义红. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+ (UIBarButtonItem *)itemWithImageName: (NSString *)imageName targer: (id)targer action: (SEL)action
{
    // 创建button按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    // 设置背景图片
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    button.size = button.currentImage.size;
    
    // 添加事件
    [button addTarget:targer action:action forControlEvents:UIControlEventTouchUpInside];
    
    // 返回item
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

@end
