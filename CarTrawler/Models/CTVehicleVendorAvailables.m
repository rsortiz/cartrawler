//
//  CTVehicleVendorAvailables.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTVehicleVendorAvailables.h"

@implementation CTVehicleVendorAvailables

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"vendor" : @"Vendor",
             @"vehicles" : @"VehAvails"};
}

+ (NSValueTransformer *)vehiclesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[CTVehicle class]];
}

@end
