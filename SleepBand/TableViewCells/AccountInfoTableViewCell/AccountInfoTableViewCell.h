//
//  AccountInfoTableViewCell.h
//  SleepBand
//
//  Created by MacBook Pro on 31/12/2022.
//  Copyright © 2022 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AccountInfoTableViewCell : UITableViewCell

@property(strong,nonatomic)IBOutlet UIView *backgroundMainView;
@property(strong,nonatomic)IBOutlet UILabel *labelHeading;
@property(strong,nonatomic)IBOutlet UILabel *labelValue;

@end

NS_ASSUME_NONNULL_END
