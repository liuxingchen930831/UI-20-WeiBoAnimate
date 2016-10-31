//
//  MenuItemButton.m
//  微博动画
//
//  Created by liuxingchen on 16/10/31.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "MenuItemButton.h"

@implementation MenuItemButton
-(void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat imageX = 0;
    CGFloat imageY = 0;
    CGFloat imageW = self.bounds.size.width;
    CGFloat imageH = self.bounds.size.height * 0.8;
    self.imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
    
    CGFloat labelY = imageH;
    CGFloat labelH = self.bounds.size.height - labelY;
    self.titleLabel.frame = CGRectMake(imageX, labelY, imageW, labelH);
}
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame] ) {
        [self setUp];
    }
    return self;
}

-(void)setUp
{
    self.imageView.contentMode = UIViewContentModeCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}
@end
