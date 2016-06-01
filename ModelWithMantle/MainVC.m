//
//  ViewController.m
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/1.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import "MainVC.h"
#import "ForecastDataSource.h"
#import "APIManager.h"
#import "ForecastItems.h"

@interface MainVC ()
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UITableView *aTableView;
@property (nonatomic, strong) ForecastDataSource *aDataSource;
@end

@implementation MainVC

- (instancetype)init {
    self = [super init];
    if(self) {
        [self setUpSubView];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpTableView];
    [self fetchData];
}

# pragma mark - [1]

- (void)setUpSubView {
    
    self.titleLabel = [UILabel new];
    self.aTableView = [UITableView new];
    
    [self.view addSubview:self.titleLabel];
    [self.view addSubview:self.aTableView];
    
    NSDictionary *views = @{@"label":_titleLabel,
                            @"tableView":_aTableView
                            };
    
    _titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    _aTableView.translatesAutoresizingMaskIntoConstraints = NO;
    
    _titleLabel.text = @"Hello Mantle";
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[label]|" options:0 metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-22-[label(50)][tableView]|" options:0 metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[tableView]|" options:0 metrics:nil views:views]];
}

# pragma mark - [9]

- (void)setUpTableView {
    
    self.aDataSource = [ForecastDataSource new];
    self.aTableView.dataSource = self.aDataSource;
}

# pragma mark - [10]

- (void)fetchData {
    [[APIManager sharedManager] getFsorecast10DayData:^(BOOL isFinish) {
        if(isFinish) {
            _titleLabel.text = [ForecastItems sharedInstance].updateTime;
            [_aTableView reloadData];
        }
    } failure:^(NSError *error) {
        if (error) {
            _titleLabel.text = @"Failed to fetch Weather data";
        }
    }];
}
@end
