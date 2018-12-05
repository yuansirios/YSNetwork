//
//  YSBaseResponse.h
//  YSNetwork
//
//  Created by yuan on 2018/8/18.
//  Copyright © 2018年 com.hundsun.carshop. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YSBaseResponse : NSObject

@property (nonatomic,assign) BOOL success;
@property (nonatomic,copy) NSString *errCode;
@property (nonatomic,copy) NSString *errMsg;
@property (nonatomic,strong) id body;

@end
