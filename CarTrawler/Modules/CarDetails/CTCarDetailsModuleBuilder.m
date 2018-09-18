//
//  CTCarDetailsModuleBuilder.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarDetailsModuleBuilder.h"

#import "CTCarDetailsViewController.h"
#import "CTCarDetailsPresenter.h"

@implementation CTCarDetailsModuleBuilder

- (UIViewController *)buildModuleWithViewModel:(CTCarViewModel *)viewModel {
    // view controller
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NSString *identifier = NSStringFromClass([CTCarDetailsViewController class]);
    CTCarDetailsViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:identifier];
    
    // presenter
    CTCarDetailsPresenter *presenter = [[CTCarDetailsPresenter alloc] initWithView:viewController viewModel:viewModel];
    
    viewController.eventHandler = presenter;
    
    return viewController;
}


@end
