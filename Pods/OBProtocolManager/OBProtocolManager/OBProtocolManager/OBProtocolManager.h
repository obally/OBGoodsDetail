//
//  OBProtocolManager.h
//  OBProtocolManager
//
//  Created by obally on 17/4/14.
//  Copyright © 2017年 obally. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OBProtocolManager : NSObject
+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol;
+ (id)serviceProvideForProtocol:(Protocol *)protocol;
@end
