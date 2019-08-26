//
//  CCMediator+OrderModule.m
//  OrderModule_Category
//
//  Created by Cai Cai on 2019/8/26.
//  Copyright © 2019 Cai Cai. All rights reserved.
//

#import "CCMediator+OrderModule.h"

NSString * const MediatorTargetOrder = @"Order";
NSString * const MediatorActionOrderMakeViewController = @"nativeOrderMakeViewController";

@implementation CCMediator (OrderModule)
/**
 *生成订单
 **/
- (UIViewController *)Order_viewControllerForMakeWithGoodsID:(NSNumber *)goodsID goodsCount:(NSInteger)goodsCount {
    if (goodsID == nil) {
        NSException *exception = [[NSException alloc] initWithName:@"Order_viewControllerForMakeWithGoodsID:goodsCount:提示" reason:@"goodsID不能为空" userInfo:nil];
        @throw exception;
    }
    
    if (goodsCount < 1) {
        NSException *exception = [[NSException alloc] initWithName:@"Order_viewControllerForMakeWithGoodsID:goodsCount:提示" reason:@"goodsCount错误" userInfo:nil];
        @throw exception;
    }
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"goodsCount"] = [NSNumber numberWithInteger:goodsCount];
    params[@"goodsID"] = goodsID;
    
    UIViewController *viewController = [self performTarget:MediatorTargetOrder action:MediatorActionOrderMakeViewController params:params shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}
@end
