//
//  LoginRequest.m
//  YSNetwork_Example
//
//  Created by yuan on 2018/12/5.
//  Copyright © 2018年 yuansirios. All rights reserved.
//

#import "LoginRequest.h"

@implementation LoginRequest

- (NSString *)requestUrl {
    return @"/test/login";
}

- (id)requestArgument {
    NSMutableDictionary *argDic = @{}.mutableCopy;
    if (_account.length != 0) {
        [argDic setObject:_account forKey:@"account"];
    }
    if (_password.length != 0) {
        [argDic setObject:_password forKey:@"password"];
    }
    return argDic.copy;
}

@end
