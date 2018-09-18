//
//  CTCarViewModel.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTCarViewModel : NSObject

@property (nonatomic, strong) NSString *vendor;
@property (nonatomic, strong) NSString *status;
@property (nonatomic, strong) NSString *price;
@property (nonatomic, strong) NSString *modelName;
@property (nonatomic, strong) NSString *fuelType;
@property (nonatomic, strong) NSString *airConditier;
@property (nonatomic, strong) NSString *passenderQuantity;
@property (nonatomic, strong) NSURL *pictureURL;
@property (nonatomic) double priceValue;

@end
