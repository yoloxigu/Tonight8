//
//  TNEventCell.h
//  ToNight8
//
//  Created by yoloxigu on 14/11/6.
//  Copyright (c) 2014年 com.tonight8.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TNEventsCell;

@interface TNEventsCell : UITableViewCell

@property (nonatomic, strong) TNEventsCell *event;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
