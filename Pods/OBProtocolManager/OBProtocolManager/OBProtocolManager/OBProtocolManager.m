//
//  OBProtocolManager.m
//  OBProtocolManager
//
//  Created by obally on 17/4/14.
//  Copyright © 2017年 obally. All rights reserved.
//

#import "OBProtocolManager.h"

@interface OBProtocolManager ()

@property(nonatomic,strong)NSMutableDictionary *serviceProvideSource;

@end
@implementation OBProtocolManager
+ (OBProtocolManager *)shareManager
{
    static OBProtocolManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc]init];
    });
    return instance;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc]init];
    }
    return self;
}
+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol
{
    if (provide == nil || protocol == nil) {
        return;
    }
    [[self shareManager].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
    
}
+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self shareManager].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}
@end
