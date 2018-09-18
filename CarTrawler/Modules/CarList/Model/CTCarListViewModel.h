//
//  CTCarListViewModel.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CTCarVendorViewModel.h"

@interface CTCarListViewModel : NSObject

@property (nonatomic, strong) NSString *pickUpDate;
@property (nonatomic, strong) NSString *returnUpDate;
@property (nonatomic, strong) NSArray<CTCarVendorViewModel*> *carVendorViewModels;

@end
