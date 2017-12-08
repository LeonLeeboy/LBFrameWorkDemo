//
//  LBScrollViewComponent.m
//  XSGeneration
//
//  Created by ivan on 2017/10/27.
//  Copyright © 2017年 ivan. All rights reserved.
//

#import "LBScrollViewComponent.h"

@interface LBScrollViewComponent ()

@property (strong , nonatomic) UIPanGestureRecognizer *pan;

@end


@implementation LBScrollViewComponent

#pragma mark - step 1 样式

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self prepareForUI];
    }
    return self;
}

- (void)prepareForUI{
    self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
}

- (void)layoutSubviews{
    [self placeViews];
    [super layoutSubviews];
}

- (void)placeViews{
}

- (void)willMoveToSuperview:(UIView *)newSuperview{
    [super willMoveToSuperview:newSuperview];
    //如果 不是UIScrollView 就什么都不做。
    if (newSuperview && ![newSuperview isKindOfClass:[UIScrollView class]]) {
        return;
    }
    //如果是 则添加监听，因为一些类型的代理api 很宝贵，封装的时候尽量用kvo来监听
    [self removeObsers];
    if (newSuperview) {
        self.LB_x = 0;
        self.LB_width = newSuperview.LB_width;
        _scrollView =(UIScrollView *)newSuperview;
        [self addobservers];
    }
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    if ([keyPath isEqualToString:LBScrollViewPangesturedRecgnizorState]) {
        [self scrollViewPanStateChanged:change];
    }else if([keyPath isEqualToString:LBScrollViewKeyPathContentOffset] ){
        [self scrollViewContentOffsetDidChange:change];
    }
}



#pragma mark - 数据（none）

#pragma mark - interaction
- (void)scrollViewPanStateChanged:(NSDictionary *)dic{}
- (void)scrollViewContentOffsetDidChange:(NSDictionary *)dic{}

- (void)removeObsers{
    [self.superview removeObserver:self forKeyPath:LBScrollViewKeyPathContentOffset];
    [self.pan removeObserver:self forKeyPath:LBScrollViewPangesturedRecgnizorState];
    self.pan = nil;
}

- (void)addobservers{
    NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
    self.pan = self.scrollView.panGestureRecognizer;
    [self.scrollView addObserver:self forKeyPath:LBScrollViewKeyPathContentOffset options:options context:nil];
    [self.pan addObserver:self forKeyPath:LBScrollViewPangesturedRecgnizorState options:options context:nil];
}


@end
