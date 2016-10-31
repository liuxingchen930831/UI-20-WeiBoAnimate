//
//  WelComeView.m
//  微博动画
//
//  Created by liuxingchen on 16/10/28.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "WelComeView.h"

@interface WelComeView ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UIImageView *loginView;

@end
@implementation WelComeView


+(instancetype)WelComeViewWithXib
{
    return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}
-(void)didMoveToSuperview
{
    self.iconView.layer.cornerRadius = 50;
    self.iconView.layer.masksToBounds = YES;
    //先把图片y轴移动一部分
    self.iconView.transform = CGAffineTransformMakeTranslation(0, 50);
    [UIView animateWithDuration:1 animations:^{
        self.loginView.alpha = 0;
    } completion:^(BOOL finished) {
        self.iconView.hidden = NO;
        //做弹簧动画
        [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:0 options:UIViewAnimationOptionCurveLinear animations:^{
            //做完弹簧动画清空transform
            self.iconView.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            self.textLabel.alpha = 0;
            [UIView animateWithDuration:1 animations:^{
                self.textLabel.hidden = NO;
                self.textLabel.alpha = 1;
            } completion:^(BOOL finished) {
                [self removeFromSuperview];
                
            }];
        }];
    }];
}
@end
