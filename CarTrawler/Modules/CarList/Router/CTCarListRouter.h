//
//  CTCarListRouter.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CTCarViewModel;

@interface CTCarListRouter : NSObject

- (instancetype)initWithViewController:(UIViewController *)viewController;

- (void)navigateToCarDetails:(CTCarViewModel *)viewModel;

@end
