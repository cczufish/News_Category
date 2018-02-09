//
//  CTMediator+RYNewsAction.m
//  RYTools_Example
//
//  Created by jingruijiaoyu on 2018/2/8.
//  Copyright © 2018年 cczufish. All rights reserved.
//

#import "CTMediator+RYNewsAction.h"
NSString * const KCTMediatorTarget_News = @"News";
NSString * const KCTMediatorActionNativTo_NewsViewController = @"NativeToNewsViewController";

@implementation CTMediator (RYNewsAction)
- (UIViewController *)yt_mediator_newsViewControllerWithParams:(NSDictionary *)dict
{
    UIViewController *viewController = [self performTarget:KCTMediatorTarget_News                               action:KCTMediatorActionNativTo_NewsViewController params:dict shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]])
    {
        return viewController;
    }else{
        NSLog(@"%@:未能实例化页面",NSStringFromSelector(_cmd));
        return [[UIViewController alloc] init];
    }
}


@end
