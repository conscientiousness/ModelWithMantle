//
//  ForecastItems.m
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/1.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import "ForecastItems.h"

@implementation ForecastItems

# pragma mark - [2]

+ (instancetype)sharedInstance {
    static ForecastItems *_sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.forecastItemsArray = [NSMutableArray new];
    }
    return self;
}

@end
