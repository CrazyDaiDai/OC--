//
//  YellowView.m
//  贝塞尔画进度条(OC)
//
//  Created by 呆仔～林枫 on 2017/7/20.
//  Copyright © 2017年 Lin_Crazy. All rights reserved.
//

#import "YellowView.h"

@interface YellowView ()

@property (weak,nonatomic) UILabel *progressLabel;

@end

@implementation YellowView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        UILabel *progressLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 40, 100, 20)];
        [self addSubview:progressLabel];
        progressLabel.textColor = [UIColor whiteColor];
        progressLabel.textAlignment = NSTextAlignmentCenter;
        self.progressLabel = progressLabel;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    //设置中心点(圆心)
    CGPoint yellowOrigin = CGPointMake(50, 50);
    //设置半径
    CGFloat radius = 50.0f;
    //设置起点
    CGFloat startAngle = - M_PI_2;
    //根据进度计算结束的位置
    CGFloat endAngle = startAngle + self.progress * M_PI * 2;
    //绘制弧线
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:yellowOrigin radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
    //从弧线的终点到中心点绘制一条线.系统会自动闭合图形,并且绘制一条从起点到中心点的线;
    [path addLineToPoint:yellowOrigin];
    //设置填充颜色
//    UIColor *color = [UIColor greenColor];
//    [color set];
    [[UIColor grayColor] set];
    [path fill];
}

- (void)setProgress:(CGFloat)progress {
    
    _progress = progress;
    self.progressLabel.text = [NSString stringWithFormat:@"%0.2f%%",progress * 100];
    //刷新UI很重要!!!
    [self setNeedsDisplay];
}

@end
