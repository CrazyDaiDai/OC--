//
//  LCView.m
//  贝塞尔画进度条(OC)
//
//  Created by 呆仔～林枫 on 2017/7/19.
//  Copyright © 2017年 Lin_Crazy. All rights reserved.
//

#import "LCView.h"
#import "YellowView.h"
#import "GreenView.h"

@interface LCView ()

@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
@property (nonatomic)YellowView *yellowView;
@property (nonatomic)GreenView *greenView;

@end

@implementation LCView

- (void)awakeFromNib {

    [super awakeFromNib];
    
    _yellowView = [[YellowView alloc]initWithFrame:CGRectMake(160, 240, 100, 100)];
    _yellowView.backgroundColor = [UIColor yellowColor];
    [self addSubview:_yellowView];
    
    _greenView = [[GreenView alloc]initWithFrame:CGRectMake(160, 450, 100, 100)];
    _greenView.backgroundColor = [UIColor greenColor];
    [self addSubview:_greenView];
}

- (IBAction)sliderValueChanged:(UISlider *)sender {
    
    self.progressView.progress = (sender.value - sender.minimumValue) / (sender.maximumValue - sender.minimumValue);
    self.yellowView.progress = self.progressView.progress;
    self.greenView.progress = self.progressView.progress;
}



@end
