//
//  CTCarServiceMapper.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CTRentalStore.h"

@interface CTCarServiceMapper : NSObject

- (CTRentalStore *)mapRentalStores:(NSDictionary *)stores error:(NSError **)error;

@end
