//
//  CTModel.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTModel.h"
#import "ISO8601DateFormatter.h"

@implementation CTModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return nil;
}

+ (MTLValueTransformer *)doubleTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^NSNumber *(NSString *value, BOOL *success, NSError *__autoreleasing *error) {
        return [NSNumber numberWithDouble:value.doubleValue];
    } reverseBlock:^NSString *(NSNumber *value, BOOL *success, NSError *__autoreleasing *error) {
        return [NSString stringWithFormat:@"%.2f", value.doubleValue];
    }];
}

+ (NSValueTransformer *)dateTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^NSDate *(NSString *string, BOOL *success, NSError *__autoreleasing *error) {
        NSDate *date = [[ISO8601DateFormatter new] dateFromString:string];
        return date;
    } reverseBlock:^NSString *(NSDate *value, BOOL *success, NSError *__autoreleasing *error) {
        return [[ISO8601DateFormatter new] stringFromDate:value];
    }];
}

@end

