//
//  SessionManager.h
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/1.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface SessionManager : AFHTTPSessionManager

+ (id)sharedManager;

@end
