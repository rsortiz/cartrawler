//
//  CTVendor.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTVendor.h"

@implementation CTVendor

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"code" : @"@Code",
             @"name" : @"@Name"};
}

@end
