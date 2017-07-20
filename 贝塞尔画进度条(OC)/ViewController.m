//
//  ViewController.m
//  贝塞尔画进度条(OC)
//
//  Created by 呆仔～林枫 on 2017/7/19.
//  Copyright © 2017年 Lin_Crazy. All rights reserved.
//

#import "ViewController.h"
#import "LCView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LCView *lcview = [[NSBundle mainBundle] loadNibNamed:@"LCView" owner:self options:nil].lastObject;
    lcview.frame = self.view.frame;
    [self.view addSubview:lcview];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
