//
//  CTRentalCore.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTModel.h"

#import "CTLocation.h"

@interface CTRentalCore : CTModel

@property (nonatomic, copy) NSDate *pickUpDateTime;
@property (nonatomic, copy) NSDate *returnDateTime;
@property (nonatomic, copy) CTLocation *pickUpLocation;
@property (nonatomic, copy) CTLocation *returnLocation;

@end
