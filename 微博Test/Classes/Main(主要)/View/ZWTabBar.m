//
//  ZWTabBar.m
//  微博Test
//
//  Created by Chia on 16/9/2.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWTabBar.h"
#import "UIView+Category.h"

@interface ZWTabBar()

@property (nonatomic, weak) UIButton *plusButton;

@end

@implementation ZWTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //发布微博按钮
        UIButton *plusBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [plusBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [plusBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        [plusBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [plusBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
        plusBtn.size = plusBtn.currentBackgroundImage.size;
        [plusBtn addTarget:self action:@selector(clickPlusBtn) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:plusBtn];
        self.plusButton = plusBtn;
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    //调整发布按钮的位置
    self.plusButton.centerX = self.width * 0.5;
    self.plusButton.centerY = self.height *0.5;
    CGFloat barButtonWidth = self.width / 5;
    NSInteger index = 0;
    //调整四个barbutton的位置
    for (UIView *view in self.subviews) {
        if ([view isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            view.x = barButtonWidth * index;
            index++;
            
            if (index == 2) {//第三个button的位置需要向后空出一个位置
                index++;
            }
        }
    }
    
}

-(void)clickPlusBtn{
    if ([self.delegate respondsToSelector:@selector(tabBarDidClickPlusBtn:)]) {
        [self.delegate tabBarDidClickPlusBtn:self];
    }
}

@end
