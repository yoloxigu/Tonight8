//
//  TNEventCell.m
//  ToNight8
//
//  Created by yoloxigu on 14/11/6.
//  Copyright (c) 2014年 com.tonight8.com. All rights reserved.
//

#import "TNEventsCell.h"
@interface TNEventsCell()

@property (weak, nonatomic) IBOutlet UILabel *distance;
@property (weak, nonatomic) IBOutlet UILabel *restaurant;

@end

@implementation TNEventsCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString * eventCellId = @"eventsCellId";
    TNEventsCell * cell = [tableView dequeueReusableCellWithIdentifier:eventCellId];
    
    if (cell == nil) {
        cell = [[TNEventsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:eventCellId];
    }
    return cell;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self renderCell];
    }
    
    return self;
};

- (void)renderCell {
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
