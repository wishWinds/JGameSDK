//
//  JGameSDK.h
//  Pods
//
//  Created by shupeng on 2019/2/22.
//

#import <Foundation/Foundation.h>
#import "OrderRequestEntity.h"

NS_ASSUME_NONNULL_BEGIN


// 回调
@protocol JGameSDKProtocol <NSObject>

/**
 注册成功的回调

 @param uid <#uid description#>
 @param access_token <#access_token description#>
 */
- (void)didRegisterSuccess:(NSString *)uid token:(NSString *)access_token;


/**
 登录成功的回调

 @param uid <#uid description#>
 @param access_token <#access_token description#>
 */
- (void)didLoginSuccess:(NSString *)uid token:(NSString *)access_token;


/**
 支付成功的回掉

 @param orderID 内部的订单ID
 */
- (void)didPaySuccess:(NSString *)orderID;

@optional

/**
 注册失败的回调
 */
- (void)didRegisterFailed;


/**
 登录失败的回调
 */
- (void)didLoginFailed;


/**
 支付失败的回调

 @param orderID 内部的订单ID
 */
- (void)didPayFailed:(NSString *)orderID;
@end


@interface JGameSDK : NSObject

/**
 SDK单例

 @return <#return value description#>
 */
+ (instancetype)shared;

@property (nonatomic, assign) id <JGameSDKProtocol> delegate;



/**
 弹出登录.
 */
- (void)popLogin;


/**
 弹出支付

 @param entity 支付请求的详细信息
 */
- (void)popPayWithOrderRequestEntity:(OrderRequestEntity *)entity;




/**
 退出登录

 @return 是否成功退出
 */
- (BOOL)logout;

/**
 在AppDelegate的openURL中. 调用此方法

 @param url <#url description#>
 */
- (void)openURL:(NSURL *)url;
@end

NS_ASSUME_NONNULL_END
