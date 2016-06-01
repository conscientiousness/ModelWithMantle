//
//  ForecastdayModel.h
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/1.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface ForecastdayModel : MTLModel <MTLJSONSerializing>
@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *detail;
@end
