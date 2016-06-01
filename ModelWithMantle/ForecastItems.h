//
//  ForecastItems.h
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/1.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ForecastItems : NSObject
+ (instancetype)sharedInstance;
@property (nonatomic, strong) NSString *updateTime;
@property (nonatomic, strong) NSMutableArray *forecastItemsArray;
@end
