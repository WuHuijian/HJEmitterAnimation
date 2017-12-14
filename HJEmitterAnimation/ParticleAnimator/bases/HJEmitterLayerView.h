//
//  HJEmitterLayerView.h
//  HJEmitterAnimation
//
//  Created by WHJ on 2017/12/14.
//  Copyright © 2017年 WHJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HJEmitterLayerView : UIView

@property (nonatomic, strong) CAEmitterLayer * emitterLayer;


- (void)show;

- (void)hide;

@end
