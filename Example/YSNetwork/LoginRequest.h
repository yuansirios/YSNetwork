//
//  LoginRequest.h
//  YSNetwork_Example
//
//  Created by yuan on 2018/12/5.
//  Copyright © 2018年 yuansirios. All rights reserved.
//

#import "YSNetwork.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginRequest : YSBaseRequest

@property (nonatomic,copy) NSString *account;

@property (nonatomic,copy) NSString *password;

@end

NS_ASSUME_NONNULL_END
