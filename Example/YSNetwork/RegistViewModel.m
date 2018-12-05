//
//  RegistViewModel.m
//  YSNetwork_Example
//
//  Created by yuan on 2018/12/5.
//  Copyright © 2018年 yuansirios. All rights reserved.
//

#import "RegistViewModel.h"
#import "RegistRequest.h"

@implementation RegistViewModel

- (void)loadRequst:(NSString *)account
             block:(YSRequestBlock)requestBlock{
    self.requestBlock = requestBlock;
    RegistRequest *request = RegistRequest.new;
    request.account = account;
    [request startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        [self handleForRequest:request];
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        if (self.requestBlock) {
            self.requestBlock(nil,HSNetErrorInfo(request));
        }
    }];
}

- (void)handleForRequest:(YTKBaseRequest *)request{
    NSData *jsonData = request.responseData;
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableLeaves error:nil];
    if (self.requestBlock) {
        self.requestBlock(dictionary,nil);
    }
}
@end
