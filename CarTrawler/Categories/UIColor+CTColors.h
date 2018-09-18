//
//  UIColor+CTColors.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <UIKit/UIKit.h>

#define RGBColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

@interface UIColor (CTColors)

+ (UIColor *)primaryColor;
+ (UIColor *)titleColor;
+ (UIColor *)textColor;

@end
