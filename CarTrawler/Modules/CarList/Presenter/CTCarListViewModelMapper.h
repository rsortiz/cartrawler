//
//  CTCarListViewModelMapper.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CTCarListViewModel, CTRentalStore;

@interface CTCarListViewModelMapper : NSObject

- (CTCarListViewModel *)mapViewModel:(CTRentalStore *)rentalStore;

@end
