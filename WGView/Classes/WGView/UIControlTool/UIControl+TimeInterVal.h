
//  Copyright © 2019 WG. All rights reserved.

#import <UIKit/UIKit.h>

@interface UIControl (TimeInterVal)
/**
 *响应的时间间隔---可以用这个给重复点击加间隔
 */
@property (nonatomic, assign) NSTimeInterval responderTimeInterval;
@end
