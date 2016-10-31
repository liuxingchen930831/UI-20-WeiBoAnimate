//
//  HomeViewController.m
//  微博动画
//
//  Created by liuxingchen on 16/10/31.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "HomeViewController.h"
#import "MenuItem.h"
#import "MenuItemButton.h"
@interface HomeViewController ()
@property(nonatomic,strong)NSMutableArray * itemsArray ;
@property (nonatomic, assign) int buttonnIndex;
@property(nonatomic,strong)NSTimer * timer ;
@end

@implementation HomeViewController
-(NSMutableArray *)itemsArray
{
    if (_itemsArray ==nil) {
        _itemsArray =[NSMutableArray array];
    }
    return _itemsArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerChange) userInfo:nil repeats:YES];
    
    [self setUpAllButtons];
}
-(void)timerChange
{
    if (self.buttonnIndex ==self.itemsArray.count) {
        [self.timer invalidate];
        return ;
    }
    UIButton *button = self.itemsArray[self.buttonnIndex];
    [self setUpAnimate:button];
    self.buttonnIndex ++;
}

#pragma mark - 给一个button做动画
-(void)setUpAnimate:(UIButton *)button;
{
    [UIView animateWithDuration:0.5 animations:^{
        button.transform = CGAffineTransformIdentity;
    }];
}
-(void)setUpAllButtons
{
    //九宫格计算
    int cols = 3;
    int col = 0;
    int row = 0;
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat WH = 100;
    //初始的Y值
    CGFloat oriY = 280 ;
    CGFloat margin = ([UIScreen mainScreen].bounds.size.width - cols * WH)/(cols + 1);
    
    int count = (int)_itemCountS.count;
    for (int i = 0 ; i <count; i++) {
        col = i % cols;
        row = i / cols ;
        
        x = margin + col *(margin + WH);
        y = row *(margin + WH) + oriY;
        
        UIButton * button = [MenuItemButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(x, y, WH, WH);
        
        MenuItem *item = _itemCountS[i];
        
        [button setImage:item.image forState:UIControlStateNormal];
        [button setTitle:item.title forState:UIControlStateNormal];
        [button setTintColor:[UIColor blueColor]];
        button.transform = CGAffineTransformMakeTranslation(0, self.view.frame.size.height);
        
        [button addTarget:self action:@selector(buttonDown:) forControlEvents:UIControlEventTouchDown];
        [button addTarget:self action:@selector(buttonInside:) forControlEvents:UIControlEventTouchUpInside];
        
        
        [self.itemsArray addObject:button];
        [self.view addSubview:button];
        
        
    }
}
-(void)buttonDown:(UIButton *)button
{
    [UIView animateWithDuration:0.5 animations:^{
       button.transform = CGAffineTransformMakeScale(1.2, 1.2);
    }];
    
}

-(void)buttonInside:(UIButton *)button
{
    [UIView animateWithDuration:0.5 animations:^{
        button.transform = CGAffineTransformMakeScale(1.8, 1.8);
        button.alpha = 0;
    }];
}
@end
