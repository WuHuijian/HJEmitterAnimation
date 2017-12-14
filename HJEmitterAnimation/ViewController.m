//
//  ViewController.m
//  HJEmitterAnimation
//
//  Created by WHJ on 2017/12/14.
//  Copyright © 2017年 WHJ. All rights reserved.
//

#import "ViewController.h"
#import "HJRainView.h"
#import "HJSnowView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HJRainView *rainView = [[HJRainView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:rainView];

    [rainView show];

    
    HJSnowView *snowView = [[HJSnowView alloc] initWithFrame:self.view.bounds];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [rainView hide];
        [self.view addSubview:snowView];
        [snowView show];
    });

   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
