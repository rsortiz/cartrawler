//
//  CTCarDetailsViewController.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarDetailsViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "UIColor+CTColors.h"
#import "UILabel+CTStyle.h"

@interface CTCarDetailsViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *carImage;
@property (weak, nonatomic) IBOutlet UILabel *carNameTitle;
@property (weak, nonatomic) IBOutlet UILabel *carNameValue;

@end

@implementation CTCarDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupNavigationBar];
    [self setupFields];
    
    [self.eventHandler viewIsReady];
}

#pragma mark - Setup

- (void)setupNavigationBar {
    self.title = NSLocalizedString(@"car.detail.title", @"Car detail");
    self.navigationController.navigationBar.barTintColor = UIColor.primaryColor;
}

- (void)setupFields {
    self.carNameTitle.text = NSLocalizedString(@"car.model.name.title", @"Car detail");
    
    [self.carNameTitle applyBigTitleStyle];
    [self.carNameValue applyBigTextStyle];
}

#pragma mark - <CTCarDetailsViewProtocol>

- (void)displayCarInfo:(CTCarViewModel *)viewModel {
    [self.carImage sd_setImageWithURL:viewModel.pictureURL];
    self.carNameValue.text = viewModel.modelName;
}


@end
