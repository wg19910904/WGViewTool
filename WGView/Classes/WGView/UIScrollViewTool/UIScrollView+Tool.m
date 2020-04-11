
//  Copyright © 2019 WG. All rights reserved.


#import "UIScrollView+Tool.h"
#import <objc/runtime.h>
@implementation UIScrollView (Tool)
+ (void)load{
    Method systemMethod = class_getInstanceMethod(self, @selector(initWithFrame:));
    Method customMethod = class_getInstanceMethod(self, @selector(wg_initWithFrame:));
    method_exchangeImplementations(systemMethod, customMethod);
}
- (instancetype)wg_initWithFrame:(CGRect)frame{
    UIScrollView *scrollV = [self wg_initWithFrame:frame];
    if (@available(iOS 11.0, *)) {
        scrollV.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    return scrollV;
}
@end
