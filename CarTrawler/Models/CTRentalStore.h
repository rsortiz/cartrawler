//
//  CTRentalStore.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTModel.h"

#import "CTRentalCore.h"
#import "CTVehicleVendorAvailables.h"

@interface CTRentalStore : CTModel

@property (nonatomic, copy) CTRentalCore *rentalCore;
@property (nonatomic, copy) NSArray<CTVehicleVendorAvailables *> *vehicleVendorAvailables;

@end
