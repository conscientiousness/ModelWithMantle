//
//  TxtForecastModel.h
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/1.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface TxtForecastModel : MTLModel <MTLJSONSerializing>
@property(nonatomic, copy) NSString *updateTime;
@property(nonatomic, copy) NSMutableArray *forecastdayAry;
@end
