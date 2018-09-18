//
//  UIColor+CTColors.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "UIColor+CTColors.h"

@implementation UIColor (CTColors)

+ (UIColor *)primaryColor {
    return RGBColor(192, 216, 11);
}

+ (UIColor *)titleColor {
    return [UIColor lightGrayColor];
}

+ (UIColor *)textColor {
    return [UIColor darkGrayColor];
}

@end
