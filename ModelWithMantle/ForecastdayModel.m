//
//  ForecastdayModel.m
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/1.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import "ForecastdayModel.h"

# pragma mark - [4]

@implementation ForecastdayModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"title": @"title",
             @"detail": @"fcttext"
             };
}


@end
