//
//  WeatherCell.h
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/7.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ForecastdayModel.h"

extern NSString *const kWeatherCellId;

@interface WeatherCell : UITableViewCell
- (void)setUpCellWithModel:(ForecastdayModel*)item;
@end
