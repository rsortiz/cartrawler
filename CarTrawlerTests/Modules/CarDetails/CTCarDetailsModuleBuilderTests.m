//
//  CTCarDetailsModuleBuilderTests.m
//  CarTrawlerTests
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CTCarDetailsModuleBuilder.h"
#import "CTCarDetailsViewController.h"

@interface CTCarDetailsModuleBuilderTests : XCTestCase

@end

@implementation CTCarDetailsModuleBuilderTests

- (void)test_buildModule {
    id viewController = [[CTCarDetailsModuleBuilder new] buildModuleWithViewModel:nil];
    
    XCTAssertNotNil(viewController);
    XCTAssertTrue([viewController isKindOfClass:[CTCarDetailsViewController class]]);
}


@end

