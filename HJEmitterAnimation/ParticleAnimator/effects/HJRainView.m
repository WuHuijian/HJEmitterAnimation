//
//  HJRainView.m
//  HJEmitterAnimation
//
//  Created by WHJ on 2017/12/14.
//  Copyright © 2017年 WHJ. All rights reserved.
//

#import "HJRainView.h"

@implementation HJRainView

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
   
    emitterCell.birthRate = 25.f;
    
    emitterCell.speed = 10.f;
    
    emitterCell.velocity = 7.f;
    
    emitterCell.velocityRange = 5.f;
    
    emitterCell.yAcceleration = 1000.f;
    
    emitterCell.contents = (__bridge id)([UIImage imageNamed:@"rain"].CGImage);
    
    emitterCell.color = [UIColor grayColor].CGColor;
    
    emitterCell.lifetime = 20.f;
    
    emitterCell.scale = 0.2f;
    
    emitterCell.scaleRange = 0.f;
    
}
#pragma mark - Public Method
- (void)show {
    // 配置cell
    CAEmitterCell * emitterCell = [[CAEmitterCell alloc] init];
    
    [self setupCell:emitterCell];
    // 添加动画
    self.emitterLayer.emitterCells = @[emitterCell];
    
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
