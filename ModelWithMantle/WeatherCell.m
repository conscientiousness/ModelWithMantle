//
//  WeatherCell.m
//  ModelWithMantle
//
//  Created by Jesselin on 2016/6/7.
//  Copyright © 2016年 JesseLin. All rights reserved.
//

#import "WeatherCell.h"
#import <YYWebImage.h>

NSString *const kWeatherCellId = @"kWeatherCellId";

@interface WeatherCell()
@property (nonatomic, strong) UIImageView *gifImageView;
@property (nonatomic, strong) UILabel *titlelabel;
@property (nonatomic, strong) UILabel *detailLabel;
@end

@implementation WeatherCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.gifImageView = [YYAnimatedImageView new];
        self.titlelabel = [UILabel new];
        self.detailLabel = [UILabel new];
        
        [self.contentView addSubview:self.gifImageView];
        [self.contentView addSubview:self.titlelabel];
        [self.contentView addSubview:self.detailLabel];
        
        self.gifImageView.translatesAutoresizingMaskIntoConstraints = NO;
        self.titlelabel.translatesAutoresizingMaskIntoConstraints = NO;
        self.detailLabel.translatesAutoresizingMaskIntoConstraints = NO;
        
        self.gifImageView.contentMode = UIViewContentModeScaleAspectFit;
        self.gifImageView.clipsToBounds = YES;
        
        self.detailLabel.numberOfLines = 0;
        self.titlelabel.font = [UIFont boldSystemFontOfSize:20];
        
        [self setUpAutoLayout];
    }
    return self;
}

- (void) setUpAutoLayout {
    
    NSDictionary *viewsDict = @{@"img":self.gifImageView,
                                @"title":self.titlelabel,
                                @"detail":self.detailLabel,
                                };
    NSDictionary *metricsDict = @{@"margin":@8
                                };
    
    [NSLayoutConstraint activateConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-margin-[img(40)]" options:0 metrics:metricsDict views:viewsDict]];
    [NSLayoutConstraint activateConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-margin-[title]-margin-[detail]-margin-|" options:0 metrics:metricsDict views:viewsDict]];
    [NSLayoutConstraint activateConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[img(40)]-margin-[title]-margin-|" options:0 metrics:metricsDict views:viewsDict]];
    [NSLayoutConstraint activateConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[img(40)]-margin-[detail]-margin-|" options:0 metrics:metricsDict views:viewsDict]];
}

- (void)setUpCellWithModel:(ForecastdayModel*)item {
    
    [_gifImageView yy_setImageWithURL:[NSURL URLWithString:item.image] options:YYWebImageOptionSetImageWithFadeAnimation];
    _titlelabel.text = item.title;
    _detailLabel.text = item.detail;
}
@end
