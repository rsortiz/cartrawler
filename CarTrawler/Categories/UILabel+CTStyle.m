//
//  UILabel+CTStyle.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "UILabel+CTStyle.h"
#import "UIColor+CTColors.h"

@implementation UILabel (CTStyle)

- (void)applyTitleStyle {
    self.font = [UIFont fontWithName:@"ArialLight" size:13];
    self.textColor = UIColor.titleColor;
}

- (void)applyBigTitleStyle {
    self.font = [UIFont fontWithName:@"ArialLight" size:30];
    self.textColor = UIColor.titleColor;
}

- (void)applyTextStyle {
    self.font = [UIFont fontWithName:@"Arial" size:18];
    self.textColor = UIColor.textColor;
}

- (void)applyBigTextStyle {
    self.font = [UIFont fontWithName:@"Arial" size:28];
    self.textColor = UIColor.textColor;
}

@end
