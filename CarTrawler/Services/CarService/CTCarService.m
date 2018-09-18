//
//  CTCarService.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarService.h"
#import "CTCarServiceMapper.h"

static NSString *const CTCarServiceURLString = @"ctabe/cars.json";

@interface CTCarService ()

@property (nonatomic, strong) CTRestClient *client;
@property (nonatomic, strong) CTCarServiceMapper *mapper;

@end

@implementation CTCarService

- (instancetype)initWithClient:(CTRestClient *)restClient {
    if (self = [super init]) {
        _client = restClient;
        _mapper = [[CTCarServiceMapper alloc] init];
    }
    
    return self;
}

- (void)loadCarsWithCompletionBlock:(CTCarServiceRequestCarsCompletionBlock)block {
    [self.client doGET:CTCarServiceURLString params:nil completion:^(NSArray *response, NSError *error) {
        NSError *parseError = nil;
        CTRentalStore *rentalStore = [self.mapper mapRentalStores:response.firstObject error:&parseError];
        
        if (block) {
            block(rentalStore, (parseError) ? parseError : error);
        }
    }];
}

@end
