//
//  YSNetwork.h
//  YSNetwork
//
//  Created by yuan on 2018/8/13.
//  Copyright © 2018年 com.hundsun.carshop. All rights reserved.
//

#import "YTKNetwork.h"
#import "YSBaseRequest.h"
#import "YSBaseResponse.h"
#import "YSNetworkArgumentsFilter.h"

inline static void setUpNetworkConfig(void){
    YTKNetworkConfig *config = [YTKNetworkConfig sharedConfig];
    config.baseUrl = @"http://www.baidu.com";
    config.debugLogEnabled = NO;
}

inline static NSError * HSBadRequestInfo(YTKBaseRequest *request,NSString *title,NSInteger errorCode){
    NSString *domain = request.response.URL.absoluteString;
    if (domain == nil) domain = @"没网络权限";
    
    NSString *desc = title;
    NSDictionary *userInfo = @{@"msg":desc==nil?@"":desc};
    NSError *error = [NSError errorWithDomain:domain
                                         code:errorCode
                                     userInfo:userInfo];
    return error;
}

inline static NSError * HSNetErrorInfo(YTKBaseRequest *request){
    return HSBadRequestInfo(request, @"网络连接失败", 404);
}

inline static NSError * HSBadSouceErrorInfo(YTKBaseRequest *request){
    return HSBadRequestInfo(request, @"数据格式错误", 405);
}

inline static NSError * HSBadAuthorize(YTKBaseRequest *request){
    return HSBadRequestInfo(request, nil, 401);
}

