//
//  YSViewController.m
//  YSNetwork
//
//  Created by yuansirios on 11/20/2018.
//  Copyright (c) 2018 yuansirios. All rights reserved.
//

#import "YSViewController.h"
#import "YSNetwork.h"
#import "LoginViewModel.h"
#import "RegistViewModel.h"

@interface YSViewController ()

@end

@implementation YSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    setUpNetworkConfig();
    
    LoginViewModel *viewModel = LoginViewModel.new;
    [viewModel loadRequst:@"123" status:@"123" block:^(id returnValue, NSError *error) {
        NSLog(@"%@:%@",returnValue,error);
    }];
    
    RegistViewModel *viewModel2 = RegistViewModel.new;
    [viewModel2 loadRequst:@"123" block:^(id returnValue, NSError *error) {
        NSLog(@"%@:%@",returnValue,error);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
