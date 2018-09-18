//
//  CTCarListModuleBuilderTests.m
//  CarTrawlerTests
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CTCarListModuleBuilder.h"
#import "CTCarListViewController.h"

@interface CTCarListModuleBuilderTests : XCTestCase

@end

@implementation CTCarListModuleBuilderTests

- (void)test_buildModule {
    id viewController = [[CTCarListModuleBuilder new] buildModule];
    
    XCTAssertNotNil(viewController);
    XCTAssertTrue([viewController isKindOfClass:[CTCarListViewController class]]);
}


@end
