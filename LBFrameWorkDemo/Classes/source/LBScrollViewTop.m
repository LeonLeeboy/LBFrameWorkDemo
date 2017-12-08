//
//  LBScrollViewTop.m
//  XSGeneration
//
//  Created by ivan on 2017/10/27.
//  Copyright © 2017年 ivan. All rights reserved.
//

#import "LBScrollViewTop.h"

@implementation LBScrollViewTop

- (void)prepareForUI{
    [super prepareForUI];
    self.backgroundColor = [UIColor blueColor];
    self.LB_height = 64;
}

- (void)placeViews{
    [super placeViews];
    self.LB_y = -self.LB_height;
}

- (void)scrollViewContentOffsetDidChange:(NSDictionary *)dic{
    [super scrollViewContentOffsetDidChange:dic];
}

- (void)scrollViewPanStateChanged:(NSDictionary *)dic{
    [super scrollViewPanStateChanged:dic];
    
}




@end
