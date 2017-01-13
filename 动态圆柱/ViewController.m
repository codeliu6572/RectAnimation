//
//  ViewController.m
//  动态圆柱
//
//  Created by 刘浩浩 on 2017/1/13.
//  Copyright © 2017年 CodingFire. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *baseView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self viewLayer];

    [self layer1];
    [self layer2];
    [self layer3];
    [self layer4];


    
}
- (void)viewLayer
{
    baseView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
    [self.view addSubview:baseView];
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    view1.backgroundColor = [UIColor orangeColor];
    [baseView addSubview:view1];
    
    
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    view2.backgroundColor = [UIColor blueColor];
    view2.alpha = 0.5;
    [baseView addSubview:view2];
    
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(320 - 50, 0, 50, 50)];
    view3.backgroundColor = [UIColor orangeColor];
    [baseView addSubview:view3];
    
    
    UIView *view4 = [[UIView alloc]initWithFrame:CGRectMake(320 - 100, 0, 100, 100)];
    view4.backgroundColor = [UIColor blueColor];
    view4.alpha = 0.5;
    [baseView addSubview:view4];
}

- (void)layer1
{
    CALayer *itemLayer = [CALayer layer];
    itemLayer.frame = CGRectMake(50, 100, 50, 200);
    itemLayer.backgroundColor = [UIColor redColor].CGColor;
    [baseView.layer addSublayer:itemLayer];
    
    CGRect frame = itemLayer.frame;
    CABasicAnimation *aniBounds = [CABasicAnimation animationWithKeyPath:@"bounds"];
    aniBounds.fromValue = [NSValue valueWithCGRect:CGRectMake(50, 100, 50, 0)];
    aniBounds.toValue = [NSValue valueWithCGRect:CGRectMake(50, 100, CGRectGetWidth(frame), CGRectGetHeight(frame))];
    
    
    
    CABasicAnimation *aniPosition = [CABasicAnimation animationWithKeyPath:@"position"];
    aniPosition.fromValue = [NSValue valueWithCGPoint:CGPointMake(50 + (CGRectGetMaxX(frame)-50)/2, 100)];
    aniPosition.toValue = [NSValue valueWithCGPoint:CGPointMake(50 + (CGRectGetMaxX(frame)-50)/2,100 + (CGRectGetMaxY(frame)-100)/2)];
    
    CAAnimationGroup *anis = [CAAnimationGroup animation];
    anis.animations = @[aniBounds,aniPosition];
    anis.duration = 1;
    anis.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    anis.removedOnCompletion = NO;
    anis.fillMode=kCAFillModeForwards;
    [itemLayer addAnimation:anis forKey:nil];

}

- (void)layer2
{
    CALayer *itemLayer = [CALayer layer];
    itemLayer.frame = CGRectMake(320 - 100, 100, 50, 200);
    itemLayer.backgroundColor = [UIColor redColor].CGColor;
    [baseView.layer addSublayer:itemLayer];
    
    CGRect frame = itemLayer.frame;
    CABasicAnimation *aniBounds = [CABasicAnimation animationWithKeyPath:@"bounds"];
    aniBounds.fromValue = [NSValue valueWithCGRect:CGRectMake(320 - 100, 100, 50, 0)];
    aniBounds.toValue = [NSValue valueWithCGRect:CGRectMake(320 - 150, 100, CGRectGetWidth(frame), CGRectGetHeight(frame))];
    
    
    
    CABasicAnimation *aniPosition = [CABasicAnimation animationWithKeyPath:@"position"];
    aniPosition.fromValue = [NSValue valueWithCGPoint:CGPointMake(220 + (CGRectGetMaxX(frame)-220)/2,CGRectGetMaxY(frame))];
    aniPosition.toValue = [NSValue valueWithCGPoint:CGPointMake(220 + (CGRectGetMaxX(frame)-220)/2, 100 + (CGRectGetMaxY(frame) - 100)/2)];
    
    CAAnimationGroup *anis = [CAAnimationGroup animation];
    anis.animations = @[aniBounds,aniPosition];
    anis.duration = 1;
    anis.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    anis.removedOnCompletion = NO;
    anis.fillMode=kCAFillModeForwards;
    [itemLayer addAnimation:anis forKey:nil];

}

- (void)layer3
{
    CALayer *itemLayer = [CALayer layer];
    itemLayer.frame = CGRectMake(110, 100, 50, 200);
    itemLayer.backgroundColor = [UIColor blueColor].CGColor;
    [baseView.layer addSublayer:itemLayer];
    
    CGRect frame = itemLayer.frame;

    CABasicAnimation *aniBounds = [CABasicAnimation animationWithKeyPath:@"transform.scale.y"];
    aniBounds.duration = 1;
    aniBounds.fromValue = @0.0;
    aniBounds.toValue = @1.0;
    aniBounds.repeatCount = 1;
    
    
    
    CABasicAnimation *aniPosition = [CABasicAnimation animationWithKeyPath:@"position"];
    aniPosition.fromValue = [NSValue valueWithCGPoint:CGPointMake(110 + (CGRectGetMaxX(frame)-110)/2,CGRectGetMaxY(frame))];
    aniPosition.toValue = [NSValue valueWithCGPoint:CGPointMake(110 + (CGRectGetMaxX(frame)-110)/2, 100 + (CGRectGetMaxY(frame) - 100)/2)];
    
    
    CAAnimationGroup *anis = [CAAnimationGroup animation];
    anis.animations = @[aniBounds,aniPosition];
    anis.duration = 1;
    anis.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    anis.removedOnCompletion = NO;
    anis.fillMode=kCAFillModeForwards;
    [itemLayer addAnimation:anis forKey:nil];

}

- (void)layer4
{
    CALayer *itemLayer = [CALayer layer];
    itemLayer.frame = CGRectMake(160, 100, 50, 200);
    itemLayer.backgroundColor = [UIColor orangeColor].CGColor;
    [baseView.layer addSublayer:itemLayer];
    
    CGRect frame = itemLayer.frame;
    
    CABasicAnimation *aniBounds = [CABasicAnimation animationWithKeyPath:@"transform.scale.y"];
    aniBounds.duration = 1;
    aniBounds.fromValue = @0.0;
    aniBounds.toValue = @1.0;
    aniBounds.repeatCount = 1;
    
    
    
    CABasicAnimation *aniPosition = [CABasicAnimation animationWithKeyPath:@"position"];
    aniPosition.fromValue = [NSValue valueWithCGPoint:CGPointMake(160 + (CGRectGetMaxX(frame)-160)/2, 100)];
    aniPosition.toValue = [NSValue valueWithCGPoint:CGPointMake(160 + (CGRectGetMaxX(frame)-160)/2,100 + (CGRectGetMaxY(frame) - 100)/2)];
    
    CAAnimationGroup *anis = [CAAnimationGroup animation];
    anis.animations = @[aniBounds,aniPosition];
    anis.duration = 1;
    anis.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    anis.removedOnCompletion = NO;
    anis.fillMode=kCAFillModeForwards;
    [itemLayer addAnimation:anis forKey:nil];
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [baseView removeFromSuperview];
    
    [self viewLayer];
    [self layer1];
    [self layer2];
    [self layer3];
    [self layer4];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
