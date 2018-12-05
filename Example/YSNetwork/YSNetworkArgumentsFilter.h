//
//  YSNetworkArgumentsFilter.h
//  YSNetwork
//
//  Created by yuan on 2018/8/17.
//  Copyright © 2018年 com.hundsun.carshop. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "YTKNetwork.h"
#import "YTKBaseRequest.h"

/// 给url追加arguments，用于全局参数，比如AppVersion, ApiVersion等
@interface YSNetworkArgumentsFilter : NSObject <YTKUrlFilterProtocol>

+ (YSNetworkArgumentsFilter *)filterWithArguments:(NSDictionary *)arguments;

- (NSString *)filterUrl:(NSString *)originUrl withRequest:(YTKBaseRequest *)request;

@end
