//
//  YSBaseRequest.m
//  YSNetwork
//
//  Created by yuan on 2018/8/13.
//  Copyright © 2018年 com.hundsun.carshop. All rights reserved.
//

#import "YSBaseRequest.h"

@implementation YSBaseRequest

- (instancetype)init{
    if (self = [super init]) {
        [self performSelector:@selector(logNetRequest) withObject:nil afterDelay:1];
    }
    return self;
}

- (void)logNetRequest{
    NSLog(@"\n<<<<<<<< 地址 >>>>>>> \n%@\n<<<<<<<< requestHeaders >>>>>>> \n%@\n<<<<<<<< requestArgument >>>>>>> \n%@",[[YTKNetworkAgent sharedAgent]buildRequestUrl:self],self.requestHeaderFieldValueDictionary,self.requestArgument);
}

- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodPOST;
}

- (NSTimeInterval)requestTimeoutInterval {
    return 5;
}

- (YTKRequestSerializerType)requestSerializerType {
    return YTKRequestSerializerTypeJSON;
}

- (YTKResponseSerializerType)responseSerializerType {
    return YTKResponseSerializerTypeJSON;
}

@end
