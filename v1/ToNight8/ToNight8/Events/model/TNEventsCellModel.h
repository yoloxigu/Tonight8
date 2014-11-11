//
//  TNEventsCellModel.h
//  ToNight8
//
//  Created by yoloxigu on 14/11/8.
//  Copyright (c) 2014年 com.tonight8.com. All rights reserved.
//  活动列表单元模型
//

#import <Foundation/Foundation.h>

@interface TNEventsCellModel : NSObject

// 活动id编号
@property (nonatomic, copy) NSString *eventId;

// 活动名称
@property (nonatomic, copy) NSString *eventName;

// 活动组织方
@property (nonatomic, copy) NSString *eventOrganization;

// 活动地点
@property (nonatomic, copy) NSString *eventLocation;

// 活动日期
@property (nonatomic, copy) NSString *eventDate;

// 活动开始时间
@property (nonatomic, copy) NSString *eventStartTime;

// 活动结束时间
@property (nonatomic, copy) NSString *eventEndTime;

// 活动价值
@property (nonatomic, copy) NSString *eventValue;

// 活动报名人数
@property (nonatomic, strong) NSNumber *eventPersons;

// 活动海报图片
@property (nonatomic, copy) NSString *eventPic;


+ (instancetype)eventWithDict:(NSDictionary *)dict;
- (instancetype)initWithDict:(NSDictionary *)dict;
@end
