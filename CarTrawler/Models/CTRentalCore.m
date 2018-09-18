//
//  CTRentalCore.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTRentalCore.h"

@implementation CTRentalCore

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"pickUpDateTime" : @"@PickUpDateTime",
             @"returnDateTime" : @"@ReturnDateTime",
             @"pickUpLocation" : @"PickUpLocation",
             @"returnLocation" : @"ReturnLocation"};
}

+ (NSValueTransformer *)pickUpDateTimeJSONTransformer {
    return [self dateTransformer];
}

+ (NSValueTransformer *)returnDateTimeJSONTransformer {
    return [self dateTransformer];
}

@end
