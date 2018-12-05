//
//  LoginViewModel.m
//  YSNetwork_Example
//
//  Created by yuan on 2018/12/5.
//  Copyright © 2018年 yuansirios. All rights reserved.
//

#import "LoginViewModel.h"
#import "LoginRequest.h"

@implementation LoginViewModel

- (void)loadRequst:(NSString *)account
            status:(NSString *)password
             block:(YSRequestBlock)requestBlock{
    self.requestBlock = requestBlock;
    LoginRequest *request = LoginRequest.new;
    request.account = account;
    request.password = password;
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
    
    /*YSBaseResponse *response = [YSBaseResponse hs_modelWithDictionary:dictionary];
    if (response.success) {
        NSDictionary *dic = response.body;
        if ([dic isKindOfClass:[NSDictionary class]]) {
            if ([[dic allKeys]containsObject:@"list"]) {
                NSString *listArrJson = dic[@"list"];
                NSArray *listArr = [NSArray hs_modelArrayWithClass:[HSCustomerModel class] json:listArrJson];
                
                if (self.requestBlock) {
                    self.requestBlock(listArr.copy,nil);
                }
            }else{
                if (self.requestBlock) {
                    self.requestBlock(nil,HSBadSouceErrorInfo(request));
                }
            }
        }else{
            if (self.requestBlock) {
                self.requestBlock(nil,HSBadSouceErrorInfo(request));
            }
        }
    }else{
        [self requestFail:request response:response];
    }*/
}

@end
