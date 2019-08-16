//
//  OrderRequestEntity.h
//  Pods
//
//  Created by shupeng on 2019/2/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 创建订单需要提供的信息
 */
@interface OrderRequestEntity : NSObject
@property (nonatomic, retain) NSString *appid;
@property (nonatomic, retain) NSString *server_id;
@property (nonatomic, retain) NSString *server_name;
@property (nonatomic, retain) NSString *role_id;
@property (nonatomic, retain) NSString *role_name;
@property (nonatomic, retain) NSString *money;
@property (nonatomic, retain) NSString *product_name;
@property (nonatomic, retain) NSString *product_desc;
@property (nonatomic, retain) NSString *game_order;
@property (nonatomic, retain) NSString *extension;
@property (nonatomic, retain) NSString *sign;
@end

NS_ASSUME_NONNULL_END
