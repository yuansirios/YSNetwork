//
//  YSBaseResponse.m
//  YSNetwork
//
//  Created by yuan on 2018/8/18.
//  Copyright © 2018年 com.hundsun.carshop. All rights reserved.
//

#import "YSBaseResponse.h"

@implementation YSBaseResponse

- (BOOL)modelCustomTransformFromDictionary:(NSDictionary *)dic {
    NSString *errMsg = dic[@"errMsg"];
    if (![errMsg isKindOfClass:[NSString class]]) {
        _errMsg = @"";
    }
    return YES;
}

@end
