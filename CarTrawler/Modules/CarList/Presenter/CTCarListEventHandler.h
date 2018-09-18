//
//  CTCarListEventHandler.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CTCarViewModel.h"

@protocol CTCarListEventHandler <NSObject>

- (void)viewIsReady;
- (void)userSelectedVehicle:(CTCarViewModel *)viewModel;

@end
