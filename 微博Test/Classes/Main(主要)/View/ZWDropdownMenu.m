//
//  ZWDropdownMenu.m
//  微博Test
//
//  Created by Chia on 16/9/1.
//  Copyright © 2016年 ZW. All rights reserved.
//

#import "ZWDropdownMenu.h"
#import "UIView+Category.h"

@interface ZWDropdownMenu()

@property(nonatomic, weak) UIImageView *containerView;
@end
@implementation ZWDropdownMenu

-(UIImageView *)containerView{
    if (_containerView == nil) {
        //创建下拉控件
        UIImageView *containerView = [[UIImageView alloc] init];
        containerView.image = [UIImage imageNamed:@"popover_background"];
        containerView.userInteractionEnabled = YES;
        [self addSubview:containerView];
        self.containerView = containerView;
    }
    return _containerView;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //设置cover颜色
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

+(instancetype)menu{
    return [[self alloc] init];
}

-(void)setContent:(UIView *)content{
    _content = content;
    //调整内容的位置
    content.x = 10;
    content.y = 15;
    //调整下拉控件的高度
    self.containerView.height = CGRectGetMaxY(content.frame) + 15;
    //调整下拉控件的宽度
    self.containerView.width = CGRectGetMaxX(content.frame) + 10;
    //将其添加到下拉控件中
    [self.containerView addSubview:content];
}

-(void)setContentController:(UIViewController *)contentController{
    _contentController = contentController;
    self.content = contentController.view;
}
-(void)showFrom:(UIView *)from{
    //获得最前面的窗口
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    //添加自己到窗口上
    [window addSubview:self];
    //设置COVER的尺寸
    self.frame = window.bounds;
    
    //调整下拉控件的位置
    //转换坐标系
    CGRect newFrame = [from.superview convertRect:from.frame toView:window];
    self.containerView.centerX = CGRectGetMidX(newFrame);
    self.containerView.y = CGRectGetMaxY(newFrame);
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismiss];
}
-(void)dismiss{
    [self removeFromSuperview];
}
@end
