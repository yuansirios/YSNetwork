//
//  RegistViewModel.h
//  YSNetwork_Example
//
//  Created by yuan on 2018/12/5.
//  Copyright © 2018年 yuansirios. All rights reserved.
//

#import "YSBaseViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface RegistViewModel : YSBaseViewModel

- (void)loadRequst:(NSString *)account
             block:(YSRequestBlock)requestBlock;

@end

NS_ASSUME_NONNULL_END
