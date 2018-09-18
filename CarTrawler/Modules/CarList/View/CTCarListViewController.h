//
//  CTCarListViewController.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CTCarListViewProtocol.h"
#import "CTCarListEventHandler.h"

@interface CTCarListViewController : UIViewController
<CTCarListViewProtocol>

@property (nonatomic, strong) id<CTCarListEventHandler> eventHandler;

@end
