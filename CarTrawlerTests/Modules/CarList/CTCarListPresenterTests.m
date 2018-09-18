//
//  CTCarListPresenterTests.m
//  CarTrawlerTests
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "CTCarListPresenter.h"

@interface CTCarListPresenterTests : XCTestCase

@property (nonatomic, weak) id<CTCarListViewProtocol> viewMock;
@property (nonatomic, strong) CTCarListInteractor *interactorMock;
@property (nonatomic, strong) CTCarListRouter *routerMock;

@property (nonatomic, strong) CTCarListPresenter *presenter;

@end

@implementation CTCarListPresenterTests

- (void)setUp {
    [super setUp];
    
    self.viewMock = OCMProtocolMock(@protocol(CTCarListViewProtocol));
    self.interactorMock = OCMClassMock([CTCarListInteractor class]);
    self.routerMock = OCMClassMock([CTCarListRouter class]);
    
    self.presenter = [[CTCarListPresenter alloc] initWithView:self.viewMock
                                                   interactor:self.interactorMock
                                                       router:self.routerMock];
}

- (void)test_viewIsRead_errorLoading {
    OCMStub([self.interactorMock loadCarlistWithCompletionBlock:[OCMArg isNotNil]]).andDo(^(NSInvocation *invocation) {
        void(^completion)(CTRentalStore *rentalStore, NSError *error) = nil;
        [invocation getArgument:&completion atIndex:2];
        
        NSError *error = [NSError errorWithDomain:NSURLErrorDomain code:500 userInfo:nil];
        completion(nil, error);
    });
    
    [self.presenter viewIsReady];
    
    OCMReject([self.viewMock displayCarList:[OCMArg any]]);
    OCMExpect([self.viewMock displayLoading]);
    OCMExpect([self.interactorMock loadCarlistWithCompletionBlock:[OCMArg isNotNil]]);
    OCMExpect([self.viewMock displayLoadingError:[OCMArg isNotNil]]);
}

- (void)test_viewIsRead_successLoading {
    OCMStub([self.interactorMock loadCarlistWithCompletionBlock:[OCMArg isNotNil]]).andDo(^(NSInvocation *invocation) {
        void(^completion)(CTRentalStore *rentalStore, NSError *error) = nil;
        [invocation getArgument:&completion atIndex:2];
        
        completion([CTRentalStore new], nil);
    });
    
    [self.presenter viewIsReady];
    
    OCMReject([self.viewMock displayLoadingError:[OCMArg any]]);
    OCMExpect([self.viewMock displayLoading]);
    OCMExpect([self.interactorMock loadCarlistWithCompletionBlock:[OCMArg isNotNil]]);
    OCMExpect([self.viewMock displayCarList:[OCMArg isNotNil]]);
}

- (void)test_userSelectVehicle {
    CTCarViewModel *carViewModel = [CTCarViewModel new];
    carViewModel.modelName = @"Gol";
    
    [self.presenter userSelectedVehicle:carViewModel];
    
    OCMExpect([self.routerMock navigateToCarDetails:carViewModel]);
}

@end
