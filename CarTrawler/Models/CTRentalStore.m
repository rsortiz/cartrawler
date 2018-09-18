//
//  CTRentalStore.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTRentalStore.h"

@implementation CTRentalStore

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"rentalCore": @"VehRentalCore",
             @"vehicleVendorAvailables": @"VehVendorAvails"};
}

+ (NSValueTransformer *)vehicleVendorAvailablesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[CTVehicleVendorAvailables class]];
}

@end
