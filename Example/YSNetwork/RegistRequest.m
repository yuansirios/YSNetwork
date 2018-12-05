//
//  RegistRequest.m
//  YSNetwork_Example
//
//  Created by yuan on 2018/12/5.
//  Copyright © 2018年 yuansirios. All rights reserved.
//

#import "RegistRequest.h"

@implementation RegistRequest

- (NSString *)baseUrl {
    return @"http://www.b.com";
}

- (NSString *)requestUrl {
    return @"/test/regist";
}

- (id)requestArgument {
    NSMutableDictionary *argDic = @{}.mutableCopy;
    if (_account.length != 0) {
        [argDic setObject:_account forKey:@"account"];
    }
    return argDic.copy;
}

@end
