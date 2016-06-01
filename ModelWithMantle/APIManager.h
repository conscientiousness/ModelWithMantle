//
//  APIManager.h
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/1.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import "SessionManager.h"

@interface APIManager : SessionManager
- (NSURLSessionDataTask *)getFsorecast10DayData: (void (^)(BOOL isFinish))success
                                        failure: (void (^)(NSError *error))failure;
@end
