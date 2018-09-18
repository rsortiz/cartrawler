//
//  CTCarListInteractor.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CTCarService.h"


@interface CTCarListInteractor : NSObject

- (instancetype)initWithCarListService:(CTCarService *)carService;

- (void)loadCarlistWithCompletionBlock:(void (^)(CTRentalStore *rentalStore, NSError *error))completion;

@end
