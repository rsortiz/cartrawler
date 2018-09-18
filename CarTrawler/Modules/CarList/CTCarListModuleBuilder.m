//
//  CTCarListModuleBuilder.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarListModuleBuilder.h"

#import "CTCarListViewController.h"
#import "CTCarListInteractor.h"
#import "CTCarListRouter.h"
#import "CTCarListPresenter.h"

@implementation CTCarListModuleBuilder

- (UIViewController *)buildModule {
    // view controller
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NSString *identifier = NSStringFromClass([CTCarListViewController class]);
    CTCarListViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:identifier];
    
    // interactor
    CTRestClient *restClient = [CTRestClient sharedClient];
    CTCarService *carService = [[CTCarService alloc] initWithClient:restClient];
    CTCarListInteractor *interactor = [[CTCarListInteractor alloc] initWithCarListService:carService];
    
    // router
    CTCarListRouter *router = [[CTCarListRouter alloc] initWithViewController:viewController];
    
    // presenter
    CTCarListPresenter *presenter = [[CTCarListPresenter alloc] initWithView:viewController
                                                                  interactor:interactor
                                                                      router:router];
    viewController.eventHandler = presenter;
    
    return viewController;
}

@end
