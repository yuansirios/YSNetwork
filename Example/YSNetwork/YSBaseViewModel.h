//
//  HSBaseViewModel.h
//  HSCarShop
//
//  Created by yuan on 2018/8/13.
//  Copyright © 2018年 com.hundsun.carshop. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "YSNetwork.h"

typedef void (^YSRequestBlock) (id returnValue,NSError *error);

@interface YSBaseViewModel : NSObject

@property (nonatomic, copy) YSRequestBlock requestBlock;

- (void)setBlockByRequest:(YSRequestBlock)requestBlock;

- (void)requestFail:(YTKBaseRequest *)request
           response:(YSBaseResponse *)response;

@end
