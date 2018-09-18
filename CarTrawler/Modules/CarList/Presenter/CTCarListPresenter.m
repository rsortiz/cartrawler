//
//  CTCarListPresenter.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarListPresenter.h"
#import "CTCarListViewModelMapper.h"

@interface CTCarListPresenter ()

@property (nonatomic, weak) id<CTCarListViewProtocol> view;
@property (nonatomic, strong) CTCarListInteractor *interactor;
@property (nonatomic, strong) CTCarListRouter *router;
@property (nonatomic, strong) CTCarListViewModelMapper *mapper;
@end

@implementation CTCarListPresenter

- (instancetype)initWithView:(id<CTCarListViewProtocol>)view
                  interactor:(CTCarListInteractor *)interactor
                      router:(CTCarListRouter *)router {
    if (self = [super init]) {
        _view = view;
        _interactor = interactor;
        _router = router;
        _mapper = [[CTCarListViewModelMapper alloc] init];
    }
    return self;
}

#pragma mark - <CTCarListViewProtocol>

- (void)viewIsReady {
    [self.view displayLoading];
    
    __weak typeof(self) weakSelf = self;
    
    [self.interactor loadCarlistWithCompletionBlock:^(CTRentalStore *rentalStore, NSError *error) {
        if (error) {
            [weakSelf handleLoadCarListError:error];
            return;
        }
        
        [weakSelf handleLoadCarListSuccess:rentalStore];
    }];
}

- (void)userSelectedVehicle:(CTCarViewModel *)viewModel {
    [self.router navigateToCarDetails:viewModel];
}

#pragma mark - Private Methods

- (void)handleLoadCarListSuccess:(CTRentalStore *)rentalStore {
    CTCarListViewModel *viewModel = [self.mapper mapViewModel:rentalStore];
    [self.view displayCarList:viewModel];
}

- (void)handleLoadCarListError:(NSError *)error {
    [self.view displayLoadingError:error];
}

@end
