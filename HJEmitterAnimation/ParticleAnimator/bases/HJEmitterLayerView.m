//
//  HJEmitterLayerView.m
//  HJEmitterAnimation
//
//  Created by WHJ on 2017/12/14.
//  Copyright © 2017年 WHJ. All rights reserved.
//

#import "HJEmitterLayerView.h"

@interface HJEmitterLayerView (){
    
    CAEmitterLayer * _emitterLayer;

}

@end


@implementation HJEmitterLayerView



+ (Class)layerClass{
    
    return [CAEmitterLayer class];
}


#pragma mark - Life Circle
-(instancetype)initWithFrame:(CGRect)frame;{
    self = [super initWithFrame:frame];
    if(self){
        _emitterLayer = (CAEmitterLayer *)self.layer;
    }
    return self;
}


#pragma mark - Pravite Method

#pragma mark - Public Method
- (void)show{
    
}

- (void)hide{
    
}

#pragma mark - Event response

#pragma mark - Delegate methods

#pragma mark - Getters/Setters/Lazy

@end
