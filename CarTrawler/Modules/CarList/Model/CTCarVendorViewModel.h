//
//  CTCarVendorViewModel.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CTCarViewModel.h"

@interface CTCarVendorViewModel : NSObject

@property (nonatomic, strong) NSString *vendorName;
@property (nonatomic, strong) NSArray<CTCarViewModel*> *vehicles;

@end
