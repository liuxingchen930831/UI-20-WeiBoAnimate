//
//  MenuItem.h
//  微博动画
//
//  Created by liuxingchen on 16/10/31.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface MenuItem : NSObject

@property(nonatomic,strong)NSString  * title ;
@property(nonatomic,strong)UIImage * image ;
+(instancetype)menutitle:(NSString *)title image:(UIImage *)image;
@end
