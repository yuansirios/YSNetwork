//
//  YSBaseViewModel.m
//  YSNetwork
//
//  Created by yuan on 2018/8/13.
//  Copyright © 2018年 com.hundsun.carshop. All rights reserved.
//

#import "YSBaseViewModel.h"

@implementation YSBaseViewModel

- (void)setBlockByRequest:(YSRequestBlock)requestBlock{
    _requestBlock = requestBlock;
}

- (void)requestFail:(YTKBaseRequest *)request response:(YSBaseResponse *)response{
    if (self.requestBlock) {
        if ([response.errCode isEqualToString:@"401"]){
            self.requestBlock(nil, HSBadAuthorize(request));
            [self performSelectorOnMainThread:@selector(authorizeFailed:) withObject:response.errMsg waitUntilDone:NO];
        }else{
            self.requestBlock(nil, HSBadRequestInfo(request, response.errMsg, [response.errCode integerValue]));
        }
    }
}

- (void)authorizeFailed:(NSString *)msg{
    
}

@end
