//
//  OBConfimOrderServiceProtocol.h
//  OBConfimOrderServiceProtocol
//
//  Created by obally on 17/4/14.
//  Copyright © 2017年 obally. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OBConfimOrderServiceProtocol <NSObject>

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete;

@end
