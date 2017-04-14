//
//  OBGoodsDetailServiceProtocol.h
//  OBGoodsDetailServiceProtocol
//
//  Created by obally on 17/4/14.
//  Copyright © 2017年 obally. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol OBGoodsDetailServiceProtocol <NSObject>
@required;
- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString*)goodsId goodsName:(NSString *)goodsName;
@end
