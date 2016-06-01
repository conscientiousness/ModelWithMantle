//
//  APIManager.m
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/1.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import "APIManager.h"
#import "TxtForecastModel.h"
#import "ForecastItems.h"

static NSString *const kForecast10DayPath = @"/api/6ac934eece7f0b83/forecast10day/lang:TW/q/CA/Taipei.json";

@implementation APIManager

# pragma mark - [7]

- (NSURLSessionDataTask *)getFsorecast10DayData: (void (^)(BOOL isFinish))success
                                                 failure: (void (^)(NSError *error))failure {
    
    return [self GET:kForecast10DayPath parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *responseDictionary = (NSDictionary *)responseObject;
        NSError *error;
        TxtForecastModel *model = [MTLJSONAdapter modelOfClass:TxtForecastModel.class fromJSONDictionary:responseDictionary error:&error];
        [ForecastItems sharedInstance].forecastItemsArray = model.forecastdayAry;
        [ForecastItems sharedInstance].updateTime = model.updateTime;
        success(YES);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",[[[task response] URL] absoluteString]);
        failure(error);
    }];
}


@end
