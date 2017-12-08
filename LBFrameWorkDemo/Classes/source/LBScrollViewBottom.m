//
//  LBScrollViewBottom.m
//  XSGeneration
//
//  Created by ivan on 2017/10/27.
//  Copyright © 2017年 ivan. All rights reserved.
//

#import "LBScrollViewBottom.h"

@interface LBScrollViewBottom ()

@property (weak , nonatomic) UILabel *label;

@end

@implementation LBScrollViewBottom

#pragma mark - step 1 样式

- (void)prepareForUI{
    [super prepareForUI];
    self.backgroundColor = [UIColor blueColor];
    self.LB_height = 49;
}

- (void)placeViews{
    [super placeViews];
    self.LB_y = self.superview.LB_height;
    self.label.frame = self.bounds;
}

- (UILabel *)label{
    if (_label==nil) {
        UILabel *label = [[UILabel alloc] init];
        label.textColor = [UIColor blackColor];
        label.text = @"上拉刷新";
        label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:label];
        _label = label;
    }
    return _label;
}

- (void)scrollViewContentOffsetDidChange:(NSDictionary *)dic{
    [super scrollViewContentOffsetDidChange:dic];
    
}

- (void)scrollViewPanStateChanged:(NSDictionary *)dic{
    [super scrollViewPanStateChanged:dic];
}



@end
