//
//  CTCarServiceTests.m
//  CarTrawlerTests
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "CTCarService.h"

@interface CTCarServiceTests : XCTestCase

@property (nonatomic, strong) CTRestClient *restClientMock;
@property (nonatomic, strong) CTCarService *service;

@end

@implementation CTCarServiceTests

- (void)setUp {
    [super setUp];
    self.restClientMock = OCMClassMock([CTRestClient class]);
    self.service = [[CTCarService alloc] initWithClient:self.restClientMock];
}

- (void)test_loadCarsWithCompletionBlock_error {
    OCMStub([self.restClientMock doGET:[OCMArg any]
                                params:[OCMArg any]
                            completion:[OCMArg isNotNil]]).andDo(^(NSInvocation *invocation) {
        void(^completion)(id response, NSError *error) = nil;
        [invocation getArgument:&completion atIndex:4];
        
        NSError *error = [NSError errorWithDomain:NSURLErrorDomain code:500 userInfo:nil];
        completion(nil, error);
    });
    
    __block BOOL completionCalled = NO;
    [self.service loadCarsWithCompletionBlock:^(CTRentalStore *rentalStore, NSError *error) {
        XCTAssertNil(rentalStore);
        XCTAssertNotNil(error);
        
        completionCalled = YES;
    }];
    XCTAssertTrue(completionCalled);
}

- (void)test_loadCarsWithCompletionBlock_success {
    OCMStub([self.restClientMock doGET:[OCMArg any]
                                params:[OCMArg any]
                            completion:[OCMArg isNotNil]]).andDo(^(NSInvocation *invocation) {
        void(^completion)(id response, NSError *error) = nil;
        [invocation getArgument:&completion atIndex:4];
        
        NSArray *rentalStoreArray = [self carsArrayFromJSONFile];
        completion(rentalStoreArray, nil);
    });
    
    __block BOOL completionCalled = NO;
    [self.service loadCarsWithCompletionBlock:^(CTRentalStore *rentalStore, NSError *error) {
        XCTAssertNotNil(rentalStore);
        XCTAssertNil(error);
        
        XCTAssertEqual(rentalStore.vehicleVendorAvailables.count, 3);
        XCTAssertNotNil(rentalStore.rentalCore);
        
        completionCalled = YES;
    }];
    XCTAssertTrue(completionCalled);
}

#pragma mark - Private methods

- (NSArray *)carsArrayFromJSONFile
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"cars" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

@end
