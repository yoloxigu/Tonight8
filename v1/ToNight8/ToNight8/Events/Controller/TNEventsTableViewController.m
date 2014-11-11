//
//  TNEventsTableViewController.m
//  ToNight8
//
//  Created by yoloxigu on 14/11/6.
//  Copyright (c) 2014年 com.tonight8.com. All rights reserved.
//

#import "TNEventsTableViewController.h"
#import "TNEventsCell.h"
#import "TNEventsCellModel.h"

@interface TNEventsTableViewController ()
@property (nonatomic, strong) NSArray *events;

@end

@implementation TNEventsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = 150;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (NSArray *)events {
    if (_events == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"events.plist" ofType:nil];
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray * eventsArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            TNEventsCellModel *event = [TNEventsCellModel eventWithDict:dict];
            [eventsArray addObject:event];
        }
        _events = eventsArray;
    }
    return _events;
}

#pragma mark - Table view data source
/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.events.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 /*
    static NSString * cellID = @"eventsCell";
    TNEventsCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [TNEventsCell cellWithTableView:tableView];
        //cell = [[[NSBundle mainBundle] loadNibNamed:@"TNEventsCell" owner:nil options:nil] lastObject];
    }
*/
    TNEventsCell *cell = [TNEventsCell cellWithTableView:tableView];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    // Configure the cell...
    return cell;
}








/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
