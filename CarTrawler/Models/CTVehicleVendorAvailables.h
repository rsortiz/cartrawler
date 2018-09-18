//
//  CTVehicleVendorAvailables.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTModel.h"

#import "CTVendor.h"
#import "CTVehicle.h"

@interface CTVehicleVendorAvailables : CTModel

@property (nonatomic, copy) CTVendor *vendor;
@property (nonatomic, copy) NSArray<CTVehicle *> *vehicles;

@end
