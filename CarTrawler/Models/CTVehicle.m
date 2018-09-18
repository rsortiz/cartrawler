//
//  CTVehicle.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTVehicle.h"

@implementation CTVehicle

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"status" : @"@Status",
             @"airConditionInd" : @"Vehicle.@AirConditionInd",
             @"transmissionType" : @"Vehicle.@TransmissionType",
             @"fuelType" : @"Vehicle.@FuelType",
             @"driveType" : @"Vehicle.@DriveType",
             @"passengerQuantity" : @"Vehicle.@PassengerQuantity",
             @"baggageQuantity" : @"Vehicle.@BaggageQuantity",
             @"code" : @"Vehicle.@BaggageQuantity",
             @"codeContext" : @"Vehicle.@Code",
             @"doorCount" : @"Vehicle.@DoorCount",
             @"modelName" : @"Vehicle.VehMakeModel.@Name",
             @"doorCount" : @"Vehicle.@DoorCount",
             @"pictureURL" : @"Vehicle.PictureURL",
             @"currencyCode" : @"TotalCharge.@CurrencyCode",
             @"estimatedTotalAmount" : @"TotalCharge.@EstimatedTotalAmount",
             @"rateTotalAmount" : @"TotalCharge.@RateTotalAmount"};
}

+ (NSValueTransformer *)pictureURLJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}


+ (NSValueTransformer *)estimatedTotalAmountJSONTransformer {
    return [self doubleTransformer];
}

+ (NSValueTransformer *)rateTotalAmountJSONTransformer {
    return [self doubleTransformer];
}

+ (NSValueTransformer *)airConditionIndJSONTransformer {
    return [NSValueTransformer mtl_valueMappingTransformerWithDictionary:@{
                                                                           @"true":  @(YES),
                                                                           @"false": @(NO)
                                                                           }];
}



@end
