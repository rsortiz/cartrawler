//
//  CTCarListRouter.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarListRouter.h"
#import "CTCarViewModel.h"

#import "CTCarDetailsModuleBuilder.h"

@interface CTCarListRouter ()

@property (nonatomic, strong) UIViewController* viewController;

@end

@implementation CTCarListRouter

- (instancetype)initWithViewController:(UIViewController *)viewController {
    self = [super init];
    if (self) {
        _viewController = viewController;
    }
    return self;
}

- (void)navigateToCarDetails:(CTCarViewModel *)viewModel {
    UIViewController *viewController = [[CTCarDetailsModuleBuilder new] buildModuleWithViewModel:viewModel];
    [self.viewController showViewController:viewController sender:nil];
}

@end
