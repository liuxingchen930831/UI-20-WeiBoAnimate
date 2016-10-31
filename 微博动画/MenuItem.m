//
//  MenuItem.m
//  微博动画
//
//  Created by liuxingchen on 16/10/31.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "MenuItem.h"

@implementation MenuItem
+(instancetype)menutitle:(NSString *)title image:(UIImage *)image
{
    MenuItem *menuitem = [[MenuItem alloc]init];
    menuitem.title = title;
    menuitem.image = image;
    return menuitem;
}
@end
