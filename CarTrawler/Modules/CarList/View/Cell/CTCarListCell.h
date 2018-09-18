//
//  CTCarListCell.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTCarViewModel.h"

@interface CTCarListCell : UITableViewCell

- (void)setupCell:(CTCarViewModel *)carViewModel;

@end
