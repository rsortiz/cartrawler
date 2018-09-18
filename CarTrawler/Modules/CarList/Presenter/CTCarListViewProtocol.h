//
//  CTCarListViewProtocol.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CTCarListViewModel.h"

@protocol CTCarListViewProtocol <NSObject>

- (void)displayLoading;
- (void)displayCarList:(CTCarListViewModel *)viewModel;
- (void)displayLoadingError:(NSError *)error;

@end
