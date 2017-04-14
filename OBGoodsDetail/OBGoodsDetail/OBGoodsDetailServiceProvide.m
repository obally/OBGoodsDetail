//
//  OBGoodsDetailServiceProvide.m
//  OBGoodsDetail
//
//  Created by obally on 17/4/14.
//  Copyright © 2017年 obally. All rights reserved.
//

#import "OBGoodsDetailServiceProvide.h"
#import <OBGoodsDetailServiceProtocol/OBGoodsDetailServiceProtocol.h>
#import <OBProtocolManager/OBProtocolManager.h>
#import "OBGoodsDetailViewController.h"
@interface OBGoodsDetailServiceProvide()<OBGoodsDetailServiceProtocol>


@end
@implementation OBGoodsDetailServiceProvide
+ (void)load
{
    [OBProtocolManager registServiceProvide:[[self alloc]init] forProtocol:@protocol(OBGoodsDetailServiceProtocol)];
}
- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName
{
   OBGoodsDetailViewController *goodsDetailVC = [[OBGoodsDetailViewController alloc]initWithGoodsId:goodsId goodsName:goodsName];
    return goodsDetailVC;
}
@end
