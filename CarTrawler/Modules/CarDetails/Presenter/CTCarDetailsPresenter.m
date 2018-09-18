//
//  CTCarDetailsPresenter.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarDetailsPresenter.h"

@interface CTCarDetailsPresenter ()

@property (nonatomic, weak) id<CTCarDetailsViewProtocol> view;
@property (nonatomic, strong) CTCarViewModel *viewModel;
@end

@implementation CTCarDetailsPresenter

- (instancetype)initWithView:(id<CTCarDetailsViewProtocol>)view
                   viewModel:(CTCarViewModel *)viewModel {
    if (self = [super init]) {
        _view = view;
        _viewModel = viewModel;
    }
    return self;
}

- (void)viewIsReady {
    [self.view displayCarInfo:self.viewModel];
}

@end

