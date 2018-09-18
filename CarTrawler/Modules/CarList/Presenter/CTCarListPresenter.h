//
//  CTCarListPresenter.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CTCarListEventHandler.h"
#import "CTCarListViewProtocol.h"
#import "CTCarListViewController.h"
#import "CTCarListInteractor.h"
#import "CTCarListRouter.h"

@interface CTCarListPresenter : NSObject
<CTCarListEventHandler>

- (instancetype)initWithView:(id<CTCarListViewProtocol>)view
                  interactor:(CTCarListInteractor *)interactor
                      router:(CTCarListRouter *)router;



@end
