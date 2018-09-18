//
//  CTCarDetailsPresenter.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CTCarViewModel.h"
#import "CTCarDetailsViewProtocol.h"
#import "CTCarDetailsEventHandler.h"

@interface CTCarDetailsPresenter : NSObject
<CTCarDetailsEventHandler>

- (instancetype)initWithView:(id<CTCarDetailsViewProtocol>)view
                   viewModel:(CTCarViewModel *)viewModel;

@end
