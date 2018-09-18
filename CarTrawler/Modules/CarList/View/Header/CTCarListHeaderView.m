//
//  CTCarListHeaderView.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarListHeaderView.h"
#import "UILabel+CTStyle.h"

@implementation CTCarListHeaderView

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self setupLabels];
}

#pragma mark - Private


- (void)setupLabels {
    
    [self.pickupTitle applyTitleStyle];
    [self.returnTitle applyTitleStyle];
    [self.pickupDate applyTextStyle];
    [self.returnDate applyTextStyle];
    
    self.pickupTitle.text = NSLocalizedString(@"car.list.header.pickup.title", @"Pick up date");
    self.returnTitle.text = NSLocalizedString(@"car.list.header.return.title", @"Pick up date");
    
    self.pickupDate.text = @"";
    self.returnDate.text = @"";
}


@end
