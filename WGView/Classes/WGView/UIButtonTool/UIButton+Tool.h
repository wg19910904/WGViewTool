
//  Copyright © 2019 WG. All rights reserved.

#import <UIKit/UIKit.h>

@interface UIButton (Tool)
/**
 设置按钮的背景颜色
 
 @param backgroundColor 要设置的背景色
 @param state 要设置颜色的对应状态
 */
- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;
@end
