//
//  CTCarService.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CTRestClient.h"
#import "CTRentalStore.h"

typedef void(^CTCarServiceRequestCarsCompletionBlock)(CTRentalStore *rentalStore, NSError *error);

@interface CTCarService : NSObject

- (instancetype)initWithClient:(CTRestClient *)restClient;
- (void)loadCarsWithCompletionBlock:(CTCarServiceRequestCarsCompletionBlock)block;

@end
