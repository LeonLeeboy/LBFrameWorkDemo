//
//  LBScrollViewComponent.h
//  XSGeneration
//
//  Created by ivan on 2017/10/27.
//  Copyright © 2017年 ivan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+LBExtension.h"
#import "LBScrollViewConst.h"

@interface LBScrollViewComponent : UIView{
    __weak UIScrollView *_scrollView;
}


#pragma mark - ForSubViews apply
@property (weak , nonatomic ,readonly) UIScrollView *scrollView;

- (void)prepareForUI NS_REQUIRES_SUPER ;

- (void)placeViews NS_REQUIRES_SUPER ;

- (void)scrollViewContentOffsetDidChange:(NSDictionary *)dic NS_REQUIRES_SUPER;

- (void)scrollViewPanStateChanged:(NSDictionary *)dic NS_REQUIRES_SUPER;
@end
