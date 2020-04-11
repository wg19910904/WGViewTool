
//  Copyright © 2019 WG. All rights reserved.


#import "UITableView+Tool.h"
#import <objc/runtime.h>
@implementation UITableView (Tool)
+(void)load{
    Method systemMethod = class_getInstanceMethod(self, @selector(initWithFrame:style:));
    Method customMethod = class_getInstanceMethod(self, @selector(wg_initWithFrame:style:));
    method_exchangeImplementations(systemMethod, customMethod);
}

- (instancetype)wg_initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    UITableView *table = [self wg_initWithFrame:frame style:style];
    if (@available(iOS 11.0, *)) {
        table.estimatedRowHeight = 0;
        table.estimatedSectionHeaderHeight = 0;
        table.estimatedSectionFooterHeight = 0;
        
    }else{
        
        
    }
    return table;
}

@end
