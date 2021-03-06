
//  Copyright © 2019 WG. All rights reserved.

#import <UIKit/UIKit.h>

@interface UILabel (Tool)
/**
 为部分文字设置颜色
 
 @param color 需要设置的颜色
 @param string 需要设置的文字
 */
- (void)setColor:(UIColor *)color string:(NSString *)string;

/**
 为部分文字设置大小
 
 @param font 需要设置的大小
 @param string 需要设置的文字
 */
- (void)setFont:(UIFont *)font string:(NSString *)string;

/**
 设置文字的行间距
 
 @param lineSpace 需要设置的行间距大小
 */
- (void)setLineSpacing:(CGFloat)lineSpace;
@end
