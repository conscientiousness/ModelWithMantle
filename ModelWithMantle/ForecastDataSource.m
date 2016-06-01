//
//  ForecastDataSource.m
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/1.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import "ForecastDataSource.h"
#import "ForecastItems.h"
#import "ForecastdayModel.h"

#define kForecastItemsArray [ForecastItems sharedInstance].forecastItemsArray
static NSString *const kCellIdentifier = @"aCell";

# pragma mark - [8]

@implementation ForecastDataSource

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return kForecastItemsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:kCellIdentifier];
    }
    
    ForecastdayModel *item = kForecastItemsArray[indexPath.row];
    cell.textLabel.text = item.title;
    cell.detailTextLabel.text = item.detail;
    return cell;
}

@end
