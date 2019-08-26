//
//  CCMediator+OrderModule.h
//  OrderModule_Category
//
//  Created by Cai Cai on 2019/8/26.
//  Copyright © 2019 Cai Cai. All rights reserved.
//

#import "CCMediator.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^SuccessBlock)(NSString *);

@interface CCMediator (OrderModule)
/**
 *生成订单
 **/
- (UIViewController *)Order_viewControllerForMakeWithGoodsID:(NSNumber *)goodsID goodsCount:(NSInteger)goodsCount success:(SuccessBlock)successBlock;
@end

NS_ASSUME_NONNULL_END
