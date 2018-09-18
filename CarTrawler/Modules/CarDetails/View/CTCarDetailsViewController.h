//
//  CTCarDetailsViewController.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTCarDetailsViewProtocol.h"
#import "CTCarDetailsEventHandler.h"

@interface CTCarDetailsViewController : UIViewController
<CTCarDetailsViewProtocol>

@property (nonatomic, strong) id<CTCarDetailsEventHandler> eventHandler;

@end
