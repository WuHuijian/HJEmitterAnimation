//
//  HJSnowView.m
//  HJEmitterAnimation
//
//  Created by WHJ on 2017/12/14.
//  Copyright © 2017年 WHJ. All rights reserved.
//

#import "HJSnowView.h"

@implementation HJSnowView

#pragma mark - Life Circle
-(instancetype)initWithFrame:(CGRect)frame;{
    self = [super initWithFrame:frame];
    if(self){
        
        [self setupUI];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupUI];
    }
    return self;
}

#pragma mark - About UI
- (void)setupUI{
    
    self.emitterLayer.masksToBounds = YES;
    
    self.emitterLayer.emitterShape = kCAEmitterLayerLine;
    
    self.emitterLayer.emitterMode = kCAEmitterLayerSurface;
    
    self.emitterLayer.emitterSize = self.frame.size;
    
    self.emitterLayer.emitterPosition = CGPointMake(self.bounds.size.width/2.f, -50);
}

#pragma mark - Pravite Method
- (void)setupCell:(CAEmitterCell *)emitterCell{
    
    emitterCell.name = @"snow";
    //粒子参数的速度乘数因子。越大出现的越快
    emitterCell.birthRate     = 1.0;
    //存活时间
    emitterCell.lifetime      = 120.0;
    //粒子速度
    emitterCell.velocity      = -5;              // falling down slowly
    //粒子速度范围
    emitterCell.velocityRange = 10;
    //粒子y方向的加速度分量
    emitterCell.yAcceleration = 5;
    //周围发射角度
    emitterCell.emissionRange = 0.5 * M_PI;       // some variation in angle
    //子旋转角度范围
    emitterCell.spinRange     = M_PI;      // slow spin
    
    emitterCell.scale = 0.2f;
    
    emitterCell.scaleRange = 0.f;
    
}
#pragma mark - Public Method
- (void)show {
    // 配置cell
    
    CAEmitterCell *snowCell1 = [[CAEmitterCell alloc] init];

    CAEmitterCell *snowCell2 = [[CAEmitterCell alloc] init];
    
    CAEmitterCell *snowCell3 = [[CAEmitterCell alloc] init];
    
    snowCell1.contents = (__bridge id)([UIImage imageNamed:@"snow01"].CGImage);
    
    snowCell2.contents = (__bridge id)([UIImage imageNamed:@"snow02"].CGImage);
    
    snowCell3.contents = (__bridge id)([UIImage imageNamed:@"snow03"].CGImage);
    [self setupCell:snowCell1];
    
    [self setupCell:snowCell2];
    
    [self setupCell:snowCell3];
    
    // 添加动画
    self.emitterLayer.emitterCells = @[snowCell1,snowCell2,snowCell3];
    
    self.hidden = NO;
}

- (void)hide{
    
    self.emitterLayer.emitterCells = nil;
    self.hidden = YES;
}

#pragma mark - Event response

#pragma mark - Delegate methods

#pragma mark - Getters/Setters/Lazy


@end
