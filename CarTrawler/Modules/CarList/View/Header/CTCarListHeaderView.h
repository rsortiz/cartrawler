//
//  CTCarListHeaderView.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CTCarListHeaderView : UIView

@property (nonatomic, weak) IBOutlet UILabel *pickupTitle;
@property (nonatomic, weak) IBOutlet UILabel *pickupDate;
@property (nonatomic, weak) IBOutlet UILabel *returnTitle;
@property (nonatomic, weak) IBOutlet UILabel *returnDate;

@end
