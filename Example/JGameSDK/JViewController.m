//
//  JViewController.m
//  JGameSDK
//
//  Created by shupeng on 02/22/2019.
//  Copyright (c) 2019 shupeng. All rights reserved.
//

#import "JViewController.h"
#import <JGameSDK/JGameSDK.h>

@interface JViewController () <JGameSDKProtocol>

@end

@implementation JViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 开启应用
    [[JGameSDK shared] openWithWechatScheme:@"test.19youxi.com"];
    // 注册回调
    [JGameSDK shared].delegate = self;
}

- (IBAction)loginPress:(id)sender {
    // 进入游戏前, 调用登录.
    [[JGameSDK shared] popLogin];
}

- (IBAction)payPress:(id)sender {
    // 创建1分钱订单信息. appid请填写游戏实际的id
    // 其他信息请填写正确且完整.
    OrderRequestEntity *entity = [[OrderRequestEntity alloc] init];
    entity.appid = @"1001";
    entity.server_id = @"test";
    entity.server_name = @"test";
    entity.role_id = @"test";
    entity.role_name = @"test";
    entity.money = @"1";
    entity.product_name = @"test";
    entity.product_desc = @"test";
    entity.game_order = @"test";
    entity.extension = @"test";
    entity.sign = @"test";
    
    // 发起支付
    [[JGameSDK shared] popPayWithOrderRequestEntity:entity];
}

- (IBAction)logoutPress:(id)sender {
    [[JGameSDK shared] logout];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 注册成功的回调
- (void)didRegisterSuccess:(NSString *)uid token:(NSString *)access_token {
    NSLog(@"Client 注册成功! uid: %@, token: %@", uid, access_token);
}

// 登录成功的回调
- (void)didLoginSuccess:(NSString *)uid token:(NSString *)access_token {
    NSLog(@"Client 登录成功! uid: %@, token: %@", uid, access_token);
}

// 支付成功的回调
- (void)didPaySuccess:(NSString *)orderID {
    NSLog(@"Client 支付成功! orderID: %@", orderID);
}

@end
