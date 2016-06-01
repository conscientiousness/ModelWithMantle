//
//  TxtForecastModel.m
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/1.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import "TxtForecastModel.h"
#import "ForecastdayModel.h"

# pragma mark - [3]

@implementation TxtForecastModel

#pragma mark - JSON Key Mapping

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"updateTime": @"forecast.txt_forecast.date",
             @"forecastdayAry": @"forecast.txt_forecast.forecastday"
             };
}

#pragma mark - JSON Transformer

+ (NSValueTransformer *)forecastdayAryJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:ForecastdayModel.class];
}

@end
