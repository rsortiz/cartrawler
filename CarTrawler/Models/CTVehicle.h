//
//  CTVehicle.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTModel.h"

typedef NS_ENUM(NSInteger, TransmissionType) {
    TransmissionTypeAutomatic,
    TransmissionTypeManual
};

@interface CTVehicle : CTModel

@property (nonatomic, copy) NSString *status;
@property (nonatomic) BOOL airConditionInd;
@property (nonatomic, copy) NSString *transmissionType;
@property (nonatomic, copy) NSString *fuelType;
@property (nonatomic, copy) NSString *driveType;
@property (nonatomic, copy) NSString *passengerQuantity;
@property (nonatomic, copy) NSString *baggageQuantity;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *codeContext;
@property (nonatomic, copy) NSString *doorCount;
@property (nonatomic, copy) NSString *modelName;
@property (nonatomic, copy) NSURL *pictureURL;
@property (nonatomic, copy) NSString *currencyCode;
@property (nonatomic) double estimatedTotalAmount;
@property (nonatomic) double rateTotalAmount;


@end
