//
//  ViewController.m
//  微博动画
//
//  Created by liuxingchen on 16/10/28.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"
#import "MenuItem.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)buttonModel:(id)sender {

     MenuItem *itme = [MenuItem menutitle:@"点评"image:[UIImage imageNamed:@"tabbar_compose_review"]];
     MenuItem *itme1 = [MenuItem menutitle:@"更多"image:[UIImage imageNamed:@"tabbar_compose_more"]];
     MenuItem *itme2 = [MenuItem menutitle:@"拍摄"image:[UIImage imageNamed:@"tabbar_compose_camera"]];
     MenuItem *itme3 = [MenuItem menutitle:@"相册"image:[UIImage imageNamed:@"tabbar_compose_photo"]];
     MenuItem *itme4 = [MenuItem menutitle:@"文字"image:[UIImage imageNamed:@"tabbar_compose_idea"]];
     MenuItem *itme5 = [MenuItem menutitle:@"签到"image:[UIImage imageNamed:@"tabbar_compose_lbs"]];
    
    HomeViewController *vc = [[HomeViewController alloc]init];
    vc.itemCountS = @[itme,itme1,itme2,itme3,itme4,itme5];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
