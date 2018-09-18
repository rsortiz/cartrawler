//
//  CTCarListInteractor.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarListInteractor.h"

@interface CTCarListInteractor ()

@property (nonatomic, strong) CTCarService *carService;

@end


@implementation CTCarListInteractor

- (instancetype)initWithCarListService:(CTCarService *)carService {
    self = [super init];
    if (self) {
        _carService = carService;
    }
    return self;
}

- (void)loadCarlistWithCompletionBlock:(void (^)(CTRentalStore *rentalStore, NSError *error))completion {
    [self.carService loadCarsWithCompletionBlock:^(CTRentalStore *rentalStore, NSError *error) {
        if (completion) {
            completion(rentalStore, error);
        }
    }];
}

@end
