//
//  CTCarServiceMapper.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarServiceMapper.h"

@implementation CTCarServiceMapper

- (CTRentalStore *)mapRentalStores:(NSDictionary *)stores error:(NSError *__autoreleasing *)error
{
    CTRentalStore *rentalStore = [MTLJSONAdapter modelOfClass:[CTRentalStore class]
                                           fromJSONDictionary:stores[@"VehAvailRSCore"]
                                                        error:error];
    return rentalStore;
}

@end
