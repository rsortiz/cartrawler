//
//  CTCarListCell.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarListCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "UILabel+CTStyle.h"

@interface CTCarListCell ()

@property (nonatomic, weak) IBOutlet UIImageView *image;
@property (nonatomic, weak) IBOutlet UILabel *vendorTitle;
@property (nonatomic, weak) IBOutlet UILabel *vendorText;
@property (nonatomic, weak) IBOutlet UILabel *statusTitle;
@property (nonatomic, weak) IBOutlet UILabel *statusText;
@property (nonatomic, weak) IBOutlet UILabel *priceTitle;
@property (nonatomic, weak) IBOutlet UILabel *priceText;
@property (nonatomic, weak) IBOutlet UILabel *airCondTitle;
@property (nonatomic, weak) IBOutlet UILabel *airCondText;
@property (nonatomic, weak) IBOutlet UILabel *modelNameTitle;
@property (nonatomic, weak) IBOutlet UILabel *modelNameText;
@property (nonatomic, weak) IBOutlet UILabel *fuelTypeTitle;
@property (nonatomic, weak) IBOutlet UILabel *fuelTypeText;
@property (nonatomic, weak) IBOutlet UILabel *passengerQntTitle;
@property (nonatomic, weak) IBOutlet UILabel *passengerQntText;

@end

@implementation CTCarListCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self.vendorTitle applyTitleStyle];
    [self.statusTitle applyTitleStyle];
    [self.priceTitle applyTitleStyle];
    [self.airCondTitle applyTitleStyle];
    [self.modelNameTitle applyTitleStyle];
    [self.fuelTypeTitle applyTitleStyle];
    [self.passengerQntTitle applyTitleStyle];
    
    [self.vendorText applyTextStyle];
    [self.statusText applyTextStyle];
    [self.priceText applyTextStyle];
    [self.airCondText applyTextStyle];
    [self.modelNameText applyTextStyle];
    [self.fuelTypeText applyTextStyle];
    [self.passengerQntText applyTextStyle];
    
    self.vendorTitle.text = NSLocalizedString(@"car.vendor.title", @"");
    self.statusTitle.text = NSLocalizedString(@"car.status.title", @"");
    self.priceTitle.text = NSLocalizedString(@"car.price.title", @"");
    self.airCondTitle.text = NSLocalizedString(@"car.air.conditioner.title", @"");
    self.modelNameTitle.text = NSLocalizedString(@"car.model.name.title", @"");
    self.fuelTypeTitle.text = NSLocalizedString(@"car.fuel.type.title", @"");
    self.passengerQntTitle.text = NSLocalizedString(@"car.passenger.qnt.title", @"");
}

- (void)setupCell:(CTCarViewModel *)carViewModel {
    self.vendorText.text = carViewModel.vendor;
    self.statusText.text = carViewModel.status;
    self.priceText.text = carViewModel.price;
    self.airCondText.text = carViewModel.airConditier;
    self.modelNameText.text = carViewModel.modelName;
    self.fuelTypeText.text = carViewModel.fuelType;
    self.passengerQntText.text = carViewModel.passenderQuantity;
    [self.image sd_setImageWithURL:carViewModel.pictureURL];
}

@end
