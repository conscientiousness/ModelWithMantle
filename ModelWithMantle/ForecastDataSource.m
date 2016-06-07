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
#import "WeatherCell.h"

#define kForecastItemsArray [ForecastItems sharedInstance].forecastItemsArray

# pragma mark - [8]

@implementation ForecastDataSource

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return kForecastItemsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WeatherCell *cell = [tableView dequeueReusableCellWithIdentifier:kWeatherCellId forIndexPath:indexPath];
    ForecastdayModel *item = (ForecastdayModel*)kForecastItemsArray[indexPath.row];
    [cell setUpCellWithModel:item];
    return cell;
}

@end
