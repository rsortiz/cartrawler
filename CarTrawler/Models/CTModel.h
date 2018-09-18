//
//  CTModel.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface CTModel : MTLModel
<MTLJSONSerializing>

+ (MTLValueTransformer *)doubleTransformer;
+ (NSValueTransformer *)dateTransformer;

@end
