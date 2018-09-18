//
//  CTCarListViewModelMapper.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTCarListViewModelMapper.h"

#import "CTCarListViewModel.h"
#import "CTRentalStore.h"

@interface CTCarListViewModelMapper ()

@property (nonatomic, strong) NSDateFormatter *dateFormatter;

@end

@implementation CTCarListViewModelMapper

- (instancetype)init {
    if (self = [super init]) {
        _dateFormatter = [[NSDateFormatter alloc] init];
        _dateFormatter.dateFormat = @"EEE, dd MMM HH:mm";
    }
    
    return self;
}

#pragma mark - Public Methods

- (CTCarListViewModel *)mapViewModel:(CTRentalStore *)rentalStore {
    CTCarListViewModel *carListViewModel = [CTCarListViewModel new];
    
    carListViewModel.pickUpDate = [self stringFromDate:rentalStore.rentalCore.pickUpDateTime];
    carListViewModel.returnUpDate = [self stringFromDate:rentalStore.rentalCore.returnDateTime];
    
    NSMutableArray *carVendorsViewModel = [NSMutableArray array];
    
    for (CTVehicleVendorAvailables *vendors in rentalStore.vehicleVendorAvailables) {
        [carVendorsViewModel addObject:[self mapCarVendorViewModel:vendors]];
    }
    
    carListViewModel.carVendorViewModels = [carVendorsViewModel copy];
    return carListViewModel;
}

#pragma mark - Private Methods

- (CTCarVendorViewModel *)mapCarVendorViewModel:(CTVehicleVendorAvailables *)vendor {
    CTCarVendorViewModel *carVendorViewModel = [CTCarVendorViewModel new];
    carVendorViewModel.vendorName = vendor.vendor.name;
    
    NSMutableArray *carsViewModel = [NSMutableArray array];
    
    for (CTVehicle *vehicle in vendor.vehicles) {
        CTCarViewModel *carViewlModel = [self mapCarViewModel:vehicle];
        carViewlModel.vendor = carVendorViewModel.vendorName;
        [carsViewModel addObject:carViewlModel];
    }
    
    ;
    
    [carsViewModel sortUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"priceValue" ascending:NO]]];
    carVendorViewModel.vehicles = [carsViewModel copy];
    
    return carVendorViewModel;
}

- (CTCarViewModel *)mapCarViewModel:(CTVehicle *)vehicle {
    CTCarViewModel *carViewModel = [CTCarViewModel new];
    
    carViewModel.airConditier =  NSLocalizedString((vehicle.airConditionInd) ? @"YES" : @"NO", @"");
    carViewModel.status = vehicle.status;
    carViewModel.price = [NSString stringWithFormat:@"%@ %.2f", vehicle.currencyCode, vehicle.estimatedTotalAmount];
    carViewModel.modelName = vehicle.modelName;
    carViewModel.fuelType = vehicle.fuelType;
    carViewModel.passenderQuantity = vehicle.passengerQuantity;
    carViewModel.priceValue = vehicle.estimatedTotalAmount;
    carViewModel.pictureURL = vehicle.pictureURL;
    
    return carViewModel;
}

- (NSString *)stringFromDate:(NSDate *)date {
    return [self.dateFormatter stringFromDate:date];
}

@end
