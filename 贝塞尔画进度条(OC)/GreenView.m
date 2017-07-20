//
//  GreenView.m
//  贝塞尔画进度条(OC)
//
//  Created by 呆仔～林枫 on 2017/7/20.
//  Copyright © 2017年 Lin_Crazy. All rights reserved.
//

#import "GreenView.h"

@interface GreenView ()

@property (weak,nonatomic) UILabel *progressLabel;
@property (assign,nonatomic) CGFloat startAngle;
@property (assign,nonatomic) CGFloat endAngle;

@end

@implementation GreenView

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

    CGPoint greenOrigin = CGPointMake(50, 50);
    CGFloat radius = 48;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:greenOrigin radius:radius startAngle:self.startAngle endAngle:self.endAngle clockwise:YES];
    [[UIColor redColor] set];
    [path fill];
    
    UIBezierPath *strokePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(1.5, 1.5, 97, 97)];
    [[UIColor grayColor] set];
    [strokePath stroke];
}

- (void)setProgress:(CGFloat)progress {

    _progress = progress;
//    NSLog(@"%f",_progress);
    self.startAngle = M_PI_2 - progress * M_PI;
    self.endAngle = M_PI_2 + progress * M_PI;
    self.progressLabel.text = [NSString stringWithFormat:@"%0.2f%%",progress * 100];
    [self setNeedsDisplay];
}

@end
